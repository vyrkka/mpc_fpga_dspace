
import numpy as np
import matplotlib.pyplot as plt

from tensorflow.keras import optimizers,regularizers
from tensorflow.keras.metrics import MeanSquaredError, MeanAbsoluteError, MeanAbsolutePercentageError
from qkeras.quantizers import quantized_bits, quantized_relu
from qkeras.qlayers import QDense, QActivation
from tensorflow.keras.models import Sequential, load_model
from qkeras.utils import _add_supported_quantized_objects
from tensorflow.keras.callbacks import EarlyStopping, ModelCheckpoint
from sklearn.metrics import r2_score, mean_squared_error, root_mean_squared_error
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import MinMaxScaler
import pandas as pd
import argparse
import os
import csv
import time
import fcntl
os.environ['CUDA_VISIBLE_DEVICES'] = '-1'



def build_dnn_model(nx, M, L, nu, W, Q, loss, reg_type="l1", reg_gain=1e-5, verbose=False, compile=True):
    model = Sequential()

    if reg_type.lower() == "l1":
        reg = regularizers.L1(reg_gain)
    elif reg_type.lower() == "l2":
        reg = regularizers.L2(reg_gain)
    else:
        reg = None

    model.add(
        QDense(
            M,
            input_shape=(nx,),
            name='fc0',
            kernel_quantizer=quantized_bits(
                W, Q-1, symmetric=True, alpha=1, keep_negative=True),
            bias_quantizer=quantized_bits(
                W, Q-1, symmetric=True, alpha=1, keep_negative=True),
            kernel_regularizer=reg,
        )
    )
    model.add(
        QActivation(
            activation=quantized_relu(W-1, Q-1, negative_slope=NEG_SLOPE),
            name='relu0'
        )
    )

    for i in range(L-1):
        model.add(
            QDense(
                M,
                name=f"fc{i+1}",
                kernel_quantizer=quantized_bits(
                    W, Q-1, symmetric=True, alpha=1, keep_negative=True),
                bias_quantizer=quantized_bits(
                    W, Q-1, symmetric=True, alpha=1, keep_negative=True),
                kernel_regularizer=reg,
            )
        )
        model.add(
            QActivation(
                activation=quantized_relu(W-1, Q-1, negative_slope=NEG_SLOPE),
                name=f"relu{i+1}"
            )
        )

    model.add(
        QDense(
            nu,
            name=f"fc{L}",
            kernel_quantizer=quantized_bits(
                W, Q-1, symmetric=True, alpha=1, keep_negative=True),
            bias_quantizer=quantized_bits(
                W, Q-1, symmetric=True, alpha=1, keep_negative=True),
            kernel_regularizer=reg,
        )
    )
    model.add(
        QActivation(
            activation=quantized_relu(W-1, Q-1, negative_slope=NEG_SLOPE),
            name=f"relu{L}"
            )
        )
    if compile:
        opt = optimizers.Adam(
            learning_rate=1e-4
        )
        model.compile(
            optimizer=opt,
            loss=loss,
            metrics=[
                MeanSquaredError(name="mse"),
                MeanAbsoluteError(name="mae"),
                MeanAbsolutePercentageError(name="mape")
            ]
        )
    if verbose:
        model.summary()
    return model


def preprocess_dataset(filename, nx, nu, test_size=0.15, split_seed=42):
    df = pd.read_csv(filename)

    scaler = MinMaxScaler()
    normalized_df = scaler.fit_transform(df)
    X_states = normalized_df[:, :nx]
    Y_actuation = normalized_df[:, nx:nx+nu]

    X_train, X_test, Y_train, Y_test = train_test_split(
        X_states, Y_actuation, test_size=test_size, random_state=split_seed)

    return (X_train, X_test, Y_train, Y_test)


def train_dnn_model(model, x_train, y_train, epochs, modelfile_name, val_split_size=0.1, batch_size=32, patience=3):
    es_cb = EarlyStopping(monitor='val_mse', mode='min',
                          verbose=2, patience=patience)
    cp_cb = ModelCheckpoint(modelfile_name, monitor='val_mse',
                            verbose=2, save_best_only=True)

    model.fit(x_train, y_train, validation_split=val_split_size,
              epochs=epochs, batch_size=batch_size, callbacks=[es_cb, cp_cb])

    co = {}
    _add_supported_quantized_objects(co)
    model = load_model(modelfile_name, custom_objects=co)
    return model, es_cb.stopped_epoch


def test_dnn_model(model, mpc_problem, x_test, y_test, L, M, W, Q):
    scores = model.evaluate(x_test, y_test)
    print(f"Mean Squared Error: {scores[1]}")
    print(f"Mean Absolute Error: {scores[2]}")
    nu = y_test.shape[1]
    y_pred = model.predict(x_test, verbose=0)
    model_r2 = r2_score(y_test, y_pred, multioutput="raw_values")
    model_mse = mean_squared_error(y_test, y_pred, multioutput="raw_values")
    model_rmse = root_mean_squared_error(y_test, y_pred, multioutput="raw_values")

    print(f"{'u':<8}{'r2':^15}{'mse':^15}{'rmse':^15}")
    print("\n".join(f"u{i:<7}{r2:^15.5}{mse:^15.4e}{rmse:^15.4e}" for (i, r2, mse, rmse) in zip(list(range(nu)), model_r2, model_mse, model_rmse)))
    print(f"{'Average':<8}{np.mean(model_r2):^15.5}{np.mean(model_mse):^15.4e}{np.mean(model_rmse):^15.4e}")
    base_route = f"{mpc_problem}/{mpc_problem}L{L}M{M}"
    csv_stats = f'{base_route}/statsL{L}M{M}W{W}Q{Q}.csv'
    with open(csv_stats,"w") as ar_stats:
        ar_stats.write('u,r2,mse,rmse\n')
        for (i, r2, mse, rmse) in zip(list(range(nu)), model_r2, model_mse, model_rmse):
            ar_stats.write(f"u{i},{r2},{mse},{rmse}\n")
        ar_stats.write(f"Average,{np.mean(model_r2)},{np.mean(model_mse)},{np.mean(model_rmse)}")
    return {"mse": scores[1], "mae": scores[2], "mape": scores[3], "r2": np.mean(model_r2)}


def create_model(dataset_name, nx, nu, M, L, W, Q, mpc_problem, loss="mse", reg_type="l1", reg_gain=1e-5, train=False, epochs=500, test_size=0.15, patience=3, force = False, quantize=False):
    base_route = f"{mpc_problem}/{mpc_problem}L{L}M{M}"
    model_name = f"qm_model_{loss.upper()}_L{L}M{M}W{W}Q{Q}"

    X_train, X_test, Y_train, Y_test = preprocess_dataset(
        dataset_name, nx, nu, test_size=test_size, split_seed=42)

    if ((train or quantize) and (force or not os.path.exists(f"{mpc_problem}/models/{model_name}"))):
        model = build_dnn_model(nx, M, L,
                                nu, W, Q, loss, reg_type=reg_type, reg_gain=reg_gain, verbose=True)
        if quantize:
            model.load_weights(f"{base_route}/float_{mpc_problem}_L{L}M{M}.h5")

        start_time = [time.perf_counter(), time.process_time()]
        model, total_epochs = train_dnn_model(model, X_train, Y_train, epochs=epochs,
                                              modelfile_name=f"{base_route}/models/{model_name}", val_split_size=0.1, batch_size=32, patience=patience)
        stop_time = [time.perf_counter(), time.process_time()]
    model.save(f'{base_route}/fixed_{mpc_problem}_L{L}M{M}W{W}Q{Q}.h5')
    stats = test_dnn_model(model, mpc_problem, X_test, Y_test, L, M, W, Q)

    return 0


if __name__ == "__main__":
    msg = "Script intended for DNN model creation for EMPC controllers using fixed-point quantization (QKeras)"
    parser = argparse.ArgumentParser(description=msg)

    train_load = parser.add_mutually_exclusive_group(required=True)
    train_load.add_argument(
        "-t", "--train", help="Train a new model from scratch", action="store_true")
    train_load.add_argument("-q", "--quantize", help="Load a float model and retrain it with quantization", action="store_true")

    parser.add_argument(
        "-f", "--force", help="Force model creation even if it already exists", action="store_true")
    parser.add_argument("--loss", help="Loss function to use during training (default: mse)",
                        choices=["mse", "mape"], default="mse")
    parser.add_argument(
        "--epochs", help="Maximum number of training epochs (default: 500)", default=500, type=int)
    parser.add_argument(
        "--patience", help="Number of epochs with no improvement before stopping (default: 3)", default=3, type=int)
    parser.add_argument(
        "--test_size", help="Fraction of the dataset to use for testing (default: 0.15)", default=0.15, type=float)
    parser.add_argument(
        "--reg_type", help="Regularization type to apply to kernels (default: l1)", choices=["l1", "l2", "none"], default="l1")
    parser.add_argument(
        "--reg_gain", help="Regularization gain/coefficient (default: 1e-5)", default=1e-5, type=float)

    parser.add_argument('mpc_problem', help="Name of the MPC problem (e.g., motorB). Used for directory naming.")
    parser.add_argument("dataset", help="Path to the CSV dataset file", type=open)
    parser.add_argument("nx", help="Number of inputs (state vector dimension)", type=int)
    parser.add_argument("W", help="Total bit width for fixed-point quantization", type=int)
    parser.add_argument("Q", help="Number of integer bits (including sign bit) for fixed-point quantization", type=int)
    parser.add_argument("L", help="Number of hidden layers in the DNN", type=int)
    parser.add_argument("M", help="Number of neurons (units) per hidden layer", type=int)
    parser.add_argument("nu", help="Number of outputs (actuation vector dimension)", type=int)

    args = parser.parse_args()
    args.dataset.close()

    create_model(args.dataset.name, args.nx, args.nu, args.M, args.L, args.W, args.Q, args.mpc_problem, loss=args.loss,
                 reg_type=args.reg_type, reg_gain=args.reg_gain, train=args.train, epochs=args.epochs, 
                 test_size=args.test_size, patience=args.patience, force=args.force, quantize=args.quantize)
    
    
    

