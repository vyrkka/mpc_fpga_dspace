
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
    parser = argparse.ArgumentParser(description="Convert H5 to MATLAB format with given parameters.")
    
    parser.add_argument("--L", type=int, required=True)
    parser.add_argument("--M", type=int, required=True)
    parser.add_argument("--W", type=int, required=False)
    parser.add_argument("--Q", type=int, required=False)
    parser.add_argument("--nx", type=int, required=True)
    parser.add_argument("--nu", type=int, required=True)
    parser.add_argument("--var_type", type=str, required=True, choices=["fixed", "float"])
    parser.add_argument("--problem", type=str, required=True)
    parser.add_argument("--pruned", action="store_true", help="Enable pruning")

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

L1_GAIN = 1e-5
#L2_GAIN = 1e-9
NEG_SLOPE = 0  # Non-zero for leaky relu


def build_dnn_model(nx, M, L, nu):
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

    return model

#L = 3
#M = 9
#W = 21
#Q = 7
#nx = 3
#nu = 1
#var_type = "fixed"
#problem = "motorB"
#pruned = True
pr_str = "_pruned" if pruned  else ""
model = build_dnn_model(nx, M, L, nu)
if(var_type == "float"):
    model.load_weights(f'{problem}/{problem}L{L}M{M}/{var_type}_{problem}_L{L}M{M}{pr_str}.h5')
    model.save(f"h5_motor_matlab/{problem}L{L}M{M}/{var_type}_{problem}_L{L}M{M}{pr_str}_matlab.h5")
else:
    model.load_weights(f'{problem}/{problem}L{L}M{M}/{var_type}_{problem}_L{L}M{M}W{W}Q{Q}{pr_str}.h5')
    model.save(f"h5_motor_matlab/{problem}L{L}M{M}/{var_type}_{problem}_L{L}M{M}W{W}Q{Q}{pr_str}_matlab.h5") 
    

