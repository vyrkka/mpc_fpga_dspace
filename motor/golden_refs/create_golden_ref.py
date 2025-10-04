from sklearn.model_selection import train_test_split
from sklearn.preprocessing import MinMaxScaler
import pandas as pd
import argparse
import os
import csv


def create_golden_reference(data_in, data_out, filelength, golden_path):
    with open(golden_path + "golden_reference_data_in.csv", 'w', newline="", encoding='UTF8') as fi:
        lines = []
        for data in data_in[0:filelength]:
            lines.append(",".join(map(str, data))+"\n")
        fi.writelines(lines)

    with open(golden_path + "golden_reference_data_out.csv", 'w', newline="", encoding='UTF8') as fo:
        lines = []
        for data in data_out[0:filelength]:
            lines.append(",".join(map(str, data))+"\n")
        fo.writelines(lines)


def preprocess_dataset(filename, nx, nu, test_size, split_seed=42):
    df = pd.read_csv(filename)

    scaler = MinMaxScaler()
    normalized_df = scaler.fit_transform(df)
    X_states = normalized_df[:, :nx]
    Y_actuation = normalized_df[:, nx:nx+nu]

    X_train, X_test, Y_train, Y_test = train_test_split(
        X_states, Y_actuation, test_size=test_size, random_state=split_seed)

    return (X_train, X_test, Y_train, Y_test)

test_size = 0.15
nx = 3
nu = 1
dataset_name = "../train_data/motorB.csv"
golden_path = "motor/"
filelength = 10000
x_train, x_test, y_train, y_test = preprocess_dataset(dataset_name, nx, nu, test_size, split_seed=42)

create_golden_reference(x_test, y_test, filelength, golden_path)
