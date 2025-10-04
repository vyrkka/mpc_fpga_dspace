import numpy as np
from tensorflow.keras.models import load_model

threshold = 0.001
# Load the model
#model = load_model('der2/der2L4M30/float_der2_L4M30.h5')
M = 10
#model = load_model(f'motorB/motorBL3M{M}/float_motorB_L3M{M}.h5')

h5_file = 'float_motorB_2_L3M9.h5'
model = load_model(h5_file)
# Get all trainable weights as a list of numpy arrays
weights = model.get_weights()

# Flatten all weights into a single 1D array
all_weights = np.concatenate([w.flatten() for w in weights if w.size > 0])

# Count total and zero weights
total_weights = all_weights.size
zero_weights = np.sum(abs(all_weights) < threshold)
# Print the results
print(f"Total weights: {total_weights}")
print(f"Zero weights: {zero_weights}")
print(f"Non-Zero weights: {total_weights-zero_weights}")
print(f"Percentage of zero weights: {100 * zero_weights / total_weights:.2f}%")
print(max(all_weights))
print(min(all_weights))