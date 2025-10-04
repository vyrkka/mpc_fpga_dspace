
import numpy as np
import matplotlib.pyplot as plt
from tensorflow.keras import optimizers,regularizers
from tensorflow.keras.metrics import MeanSquaredError, MeanAbsoluteError, MeanAbsolutePercentageError
from tensorflow.keras.models import Sequential, load_model
from tensorflow.keras.layers import Dense, Activation
from qkeras.utils import _add_supported_quantized_objects
from tensorflow.keras.callbacks import EarlyStopping, ModelCheckpoint, ReduceLROnPlateau
from keras import activations
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

L1_GAIN = 1e-5
#L2_GAIN = 1e-5
NEG_SLOPE = 0  # Non-zero for leaky relu

def build_dnn_model(nx, M, L, nu, loss, verbose=False, compile=True):
    model = Sequential()
    model.add(
        Dense(
            M,
            activation = activations.relu,
            input_shape=(nx,),
            name='fc0',
            kernel_regularizer=regularizers.L1(L1_GAIN),
        )
    )

    for i in range(L-1):
        model.add(
            Dense(
                M,
                activation = activations.relu,
                name=f"fc{i+1}",
                kernel_regularizer=regularizers.L1(L1_GAIN),
            )
        )

    model.add(
        Dense(
            nu,
            activation = activations.relu,
            name=f"fc{L}",
            kernel_regularizer=regularizers.L1(L1_GAIN),
        )
    )
    if compile:
        opt = optimizers.Adam(
            learning_rate=5e-3
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

def create_golden_references(data_in, data_out, filelength=10000, filepath=""):
    with open(filepath + "golden_reference_data_in.csv", 'w', newline="", encoding='UTF8') as fi:
        lines = []
        for data in data_in[0:filelength]:
            lines.append(",".join(map(str, data))+"\n")
        fi.writelines(lines)

    with open(filepath + "golden_reference_data_out.csv", 'w', newline="", encoding='UTF8') as fo:
        lines = []
        for data in data_out[0:filelength]:
            lines.append(",".join(map(str, data))+"\n")
        fo.writelines(lines)


def preprocess_dataset(filename, nx, nu, test_size=0.15, split_seed=42, mins_max_csv = ''):
    df = pd.read_csv(filename)

    scaler = MinMaxScaler()
    normalized_df = scaler.fit_transform(df)
    X_states = normalized_df[:, :nx]
    Y_actuation = normalized_df[:, nx:nx+nu]

    X_train, X_test, Y_train, Y_test = train_test_split(
        X_states, Y_actuation, test_size=test_size, random_state=split_seed)
    """
    mins = df.min()
    maxs = df.max()

     mins_max_df = pd.DataFrame({
        'Variable': df.columns,
        'Min': mins.values,
        'Max': maxs.values
    })
    mins_max_df.to_csv(mins_max_csv, index=False) """
    return (X_train, X_test, Y_train, Y_test)


def train_dnn_model(model, x_train, y_train, epochs, modelfile_name, val_split_size=0.1, batch_size=32, patience=10):
    es_cb = EarlyStopping(monitor='val_mse', mode='min',
                          verbose=2, patience=patience)
    cp_cb = ModelCheckpoint(modelfile_name, monitor='val_mse',
                            verbose=2, save_best_only=True)
    #reduce_lr = ReduceLROnPlateau(monitor='val_mse', factor=0.1,
                              #patience=10, min_lr=5e-4)

    model.fit(x_train, y_train, validation_split=val_split_size,
              #epochs=epochs, batch_size=batch_size, callbacks=[es_cb, cp_cb, reduce_lr], shuffle = True)
                epochs=epochs, batch_size=batch_size, callbacks=[es_cb, cp_cb], shuffle = True)
    model = load_model(modelfile_name)
    return model, es_cb.stopped_epoch


def test_dnn_model(model, x_test, y_test, L, M, model_name, mpc_problem, golden=False, golden_len=10000):
    scores = model.evaluate(x_test, y_test)
    print(f"Mean Squared Error: {scores[1]}")
    print(f"Mean Absolute Error: {scores[2]}")
    nu = y_test.shape[1]
    y_pred = model.predict(x_test, verbose=0)
    model_r2 = r2_score(y_test, y_pred, multioutput="raw_values")
    model_mse = mean_squared_error(y_test, y_pred, multioutput="raw_values")
    model_rmse = root_mean_squared_error(y_test, y_pred, multioutput="raw_values")
    if golden:
        create_golden_references(
            x_test, y_test, filelength=golden_len, filepath=f"{mpc_problem}/")
    print(f"{'u':<8}{'r2':^15}{'mse':^15}{'rmse':^15}")
    print("\n".join(f"u{i:<7}{r2:^15.5}{mse:^15.4e}{rmse:^15.4e}" for (i, r2, mse, rmse) in zip(list(range(nu)), model_r2, model_mse, model_rmse)))
    print(f"{'Average':<8}{np.mean(model_r2):^15.5}{np.mean(model_mse):^15.4e}{np.mean(model_rmse):^15.4e}")
    base_route = f"{mpc_problem}/{mpc_problem}L{L}M{M}"
    csv_stats = f'{base_route}/statsL{L}M{M}.csv'
    with open(csv_stats,"w") as ar_stats:
        ar_stats.write('u,r2,mse,rmse\n')
        for (i, r2, mse, rmse) in zip(list(range(nu)), model_r2, model_mse, model_rmse):
            ar_stats.write(f"u{i},{r2},{mse},{rmse}\n")
        ar_stats.write(f"Average,{np.mean(model_r2)},{np.mean(model_mse)},{np.mean(model_rmse)}")
    return {"mse": scores[1], "mae": scores[2], "mape": scores[3], "r2": np.mean(model_r2)}


def create_model(dataset_name, nx, nu, M, L, mpc_problem, loss="mse", train=False, golden=0, epochs=300, test_size=0.15, patience=10, force=False, quantize=False):
    model_name = f"qm_model_{loss.upper()}_L{L}M{M}float"
    model_suffix = f"{loss.upper()}_L{L}M{M}float"
    base_route = f"{mpc_problem}/{mpc_problem}L{L}M{M}"
    X_train, X_test, Y_train, Y_test = preprocess_dataset(
        dataset_name, nx, nu, test_size=test_size, split_seed=42, mins_max_csv=f'{mpc_problem}/mins_max.csv')

    if (train or quantize) and (force or not os.path.exists(f"{mpc_problem}/models/{model_name}")):
        model = build_dnn_model(nx, M, L,
                                nu, loss, verbose=False)
        if quantize:
            old_model_name = f"ref_model_{loss.upper()}_L{L}M{M}W0Q0"
            model.load_weights(f"{mpc_problem}/models/{old_model_name}")
        
        start_time = [time.perf_counter(), time.process_time()]
        model, total_epochs = train_dnn_model(model, X_train, Y_train, epochs=epochs,
                                              modelfile_name=f"{base_route}/models/{model_name}", val_split_size=0.1, batch_size=32, patience=patience)
        stop_time = [time.perf_counter(), time.process_time()] 
    model.save(f'{base_route}/float_{mpc_problem}_L{L}M{M}.h5')
    stats = test_dnn_model(model, X_test, Y_test, L, M, model_name=model_suffix,
                           mpc_problem=mpc_problem)

    return 0


if __name__ == "__main__":
    msg = "Script intended for DNN model creation for EMPC controllers"
    parser = argparse.ArgumentParser(description=msg)

    train_load = parser.add_mutually_exclusive_group(required=True)
    train_load.add_argument(
        "-t", "--train", help="Train model", action="store_true")
    train_load.add_argument(
        "-l", "--load", help="Load a model", action="store_true")
    train_load.add_argument("-q", "--quantize", help="Retrain quantized", action="store_true")
    parser.add_argument(
        "-f", "--force", help="Force a model creation", action="store_true")
    parser.add_argument("--loss", help="Loss function ",
                        choices=["mse", "mape"], default="mse")
    parser.add_argument(
        "--golden", help="Generate golden reference of given size", default=0, type=int)
    parser.add_argument(
        "--epochs", help="Maximum epochs for training", default=500, type=int)
    parser.add_argument(
        "--patience", help="Sets the limit on consecutive epochs with no loss reduction", default=10, type=int)
    parser.add_argument(
        "--test_size", help="Sets size of testing data", default=0.15, type=float)
    parser.add_argument('mpc_problem', help="MPC problem")
    parser.add_argument("dataset", help="Dataset file location", type=open)
    parser.add_argument("nx", help="Number of inputs", type=int)
    parser.add_argument("L", help="Number of hidden layers", type=int)
    parser.add_argument("M", help="Units per layer", type=int)
    parser.add_argument("nu", help="Number of outputs", type=int)
    args = parser.parse_args()

    args.dataset.close()

    
    create_model(args.dataset.name, args.nx, args.nu, args.M, args.L, args.mpc_problem, loss=args.loss,
                 train=args.train, golden=args.golden, epochs=args.epochs, test_size=args.test_size, patience=args.patience, force=args.force, quantize=args.quantize)
    
    
    

