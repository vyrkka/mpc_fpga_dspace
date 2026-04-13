
import numpy as np
import matplotlib.pyplot as plt

from tensorflow.keras import optimizers,regularizers
from tensorflow.keras.metrics import MeanSquaredError, MeanAbsoluteError, MeanAbsolutePercentageError
from qkeras.quantizers import quantized_bits, quantized_relu
from tensorflow.keras.models import Sequential, load_model
from tensorflow.keras.layers import Dense, Activation
from qkeras.utils import _add_supported_quantized_objects
from tensorflow.keras.callbacks import EarlyStopping, ModelCheckpoint
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



def parse_arguments():
    parser = argparse.ArgumentParser(description="Convert an H5 model file (trained with QKeras or Keras) to a standard Keras H5 format compatible with MATLAB.")
    
    parser.add_argument("--L", type=int, required=True, help="Number of hidden layers in the model.")
    parser.add_argument("--M", type=int, required=True, help="Number of units per hidden layer.")
    parser.add_argument("--W", type=int, required=False, help="Total bit width (required for fixed-point models).")
    parser.add_argument("--Q", type=int, required=False, help="Number of integer bits (required for fixed-point models).")
    parser.add_argument("--nx", type=int, required=True, help="Number of inputs (state vector dimension).")
    parser.add_argument("--nu", type=int, required=True, help="Number of outputs (actuation vector dimension).")
    parser.add_argument("--var_type", type=str, required=True, choices=["fixed", "float"], help="Type of model to convert: 'fixed' for quantized, 'float' for floating-point.")
    parser.add_argument("--problem", type=str, required=True, help="Name of the MPC problem (e.g., motorB).")
    parser.add_argument("--pruned", action="store_true", help="Set this flag if the model was pruned.")
    parser.add_argument("--reg_type", type=str, choices=["l1", "l2", "none"], default="l1", help="Regularization type used during training.")
    parser.add_argument("--reg_gain", type=float, default=1e-5, help="Regularization gain used during training.")

    return parser.parse_args()

args = parse_arguments()
L = args.L
M = args.M
W = args.W
Q = args.Q
nx = args.nx
nu = args.nu
var_type = args.var_type
problem = args.problem
pruned = args.pruned
reg_type = args.reg_type
reg_gain = args.reg_gain

NEG_SLOPE = 0  # Non-zero for leaky relu


def build_dnn_model(nx, M, L, nu, reg_type="l1", reg_gain=1e-5):
    model = Sequential()
    
    if reg_type.lower() == "l1":
        reg = regularizers.L1(reg_gain)
    elif reg_type.lower() == "l2":
        reg = regularizers.L2(reg_gain)
    else:
        reg = None

    model.add(
        Dense(
            M,
            activation = activations.relu,
            input_shape=(nx,),
            name='fc0',
            kernel_regularizer=reg,
        )
    )

    for i in range(L-1):
        model.add(
            Dense(
                M,
                activation = activations.relu,
                name=f"fc{i+1}",
                kernel_regularizer=reg,
            )
        )

    model.add(
        Dense(
            nu,
            activation = activations.relu,
            name=f"fc{L}",
            kernel_regularizer=reg,
        )
    )

    return model

pr_str = "_pruned" if pruned  else ""
model = build_dnn_model(nx, M, L, nu, reg_type=reg_type, reg_gain=reg_gain)
if(var_type == "float"):
    model.load_weights(f'{problem}/{problem}L{L}M{M}/{var_type}_{problem}_L{L}M{M}{pr_str}.h5')
    model.save(f"h5_motor_matlab/{problem}L{L}M{M}/{var_type}_{problem}_L{L}M{M}{pr_str}_matlab.h5")
else:
    model.load_weights(f'{problem}/{problem}L{L}M{M}/{var_type}_{problem}_L{L}M{M}W{W}Q{Q}{pr_str}.h5')
    model.save(f"h5_motor_matlab/{problem}L{L}M{M}/{var_type}_{problem}_L{L}M{M}W{W}Q{Q}{pr_str}_matlab.h5") 
    

