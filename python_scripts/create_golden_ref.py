from sklearn.model_selection import train_test_split
from sklearn.preprocessing import MinMaxScaler
import pandas as pd
import argparse
import os
import csv


def create_golden_reference(data_in, data_out, filelength, golden_path, in_file, out_file):
    # Ensure directory exists
    if golden_path and not os.path.exists(golden_path):
        os.makedirs(golden_path)
        
    in_file_path = os.path.join(golden_path, in_file)
    out_file_path = os.path.join(golden_path, out_file)

    with open(in_file_path, 'w', newline="", encoding='UTF8') as fi:
        lines = []
        for data in data_in[0:filelength]:
            lines.append(",".join(map(str, data))+"\n")
        fi.writelines(lines)

    with open(out_file_path, 'w', newline="", encoding='UTF8') as fo:
        lines = []
        for data in data_out[0:filelength]:
            lines.append(",".join(map(str, data))+"\n")
        fo.writelines(lines)
    
    print(f"Golden reference files created: {in_file_path} and {out_file_path}")


def preprocess_dataset(filename, nx, nu, split_seed=42):
    df = pd.read_csv(filename)

    scaler = MinMaxScaler()
    normalized_df = scaler.fit_transform(df)
    X_states = normalized_df[:, :nx]
    Y_actuation = normalized_df[:, nx:nx+nu]

    # Use all data for golden reference (test_size = 1)
    X_train, X_test, Y_train, Y_test = train_test_split(
        X_states, Y_actuation, test_size=1.0, random_state=split_seed)

    return (X_train, X_test, Y_train, Y_test)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Generate golden reference CSV files for hardware verification.')
    
    parser.add_argument('dataset', type=str, help='Path to the input CSV dataset.')
    parser.add_argument('nx', type=int, help='Number of input states.')
    parser.add_argument('nu', type=int, help='Number of output actuations.')
    parser.add_argument('--filelength', type=int, default=10000, help='Number of samples to include in the golden reference (default: 10000).')
    parser.add_argument('--golden_path', type=str, default='motor/', help='Directory where the golden reference files will be saved (default: motor/).')
    parser.add_argument('--in_file', type=str, default='golden_reference_data_in.csv', help='Name of the input golden reference file.')
    parser.add_argument('--out_file', type=str, default='golden_reference_data_out.csv', help='Name of the output golden reference file.')
    parser.add_argument('--seed', type=int, default=42, help='Random seed for dataset splitting (default: 42).')

    args = parser.parse_args()

    x_train, x_test, y_train, y_test = preprocess_dataset(args.dataset, args.nx, args.nu, split_seed=args.seed)

    create_golden_reference(x_test, y_test, args.filelength, args.golden_path, args.in_file, args.out_file)
