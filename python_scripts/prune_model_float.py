import numpy as np
from tensorflow.keras.models import load_model, save_model
from qkeras.utils import _add_supported_quantized_objects
import argparse


def parse_arguments():
    parser = argparse.ArgumentParser(description='Prune a floating-point model by setting small weights to zero.')

    parser.add_argument('problem', type=str, help="Name of the MPC problem (e.g., motorB).")
    parser.add_argument('L', type=int, help="Number of hidden layers in the model.")
    parser.add_argument('M', type=int, help="Number of units per hidden layer.")
    parser.add_argument('--threshold', type=float, default = 1e-3, help="Weights with absolute value below this threshold will be set to zero (default: 1e-3).")

    return parser.parse_args()

args = parse_arguments()
problem = args.problem
L = args.L
M = args.M
threshold = args.threshold
# Parameters
model_path = f'{problem}/{problem}L{L}M{M}/float_{problem}_L{L}M{M}.h5'
save_path = f'{problem}/{problem}L{L}M{M}/float_{problem}_L{L}M{M}_pruned.h5'

# Load the model
co = {}
_add_supported_quantized_objects(co)
model = load_model(model_path, custom_objects=co)

# Prune weights below threshold
new_weights = []
for w in model.get_weights():
    w[np.abs(w) < threshold] = 0
    new_weights.append(w)

# Set the new weights to the model
model.set_weights(new_weights)

# Save the pruned model
model.save(save_path)

print(f"Model pruned with threshold {threshold} and saved to {save_path}")