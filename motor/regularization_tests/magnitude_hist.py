import tensorflow as tf
import numpy as np
import matplotlib.pyplot as plt


#h5_file = 'float_motorB_L3M9.h5'
h5_file = 'float_motorB_2_L3M9.h5'
bins=100
plt.style.use('seaborn-v0_8')
size = 19
plt.rcParams.update({
    'axes.titlesize': size,
    'axes.labelsize': size,
    'xtick.labelsize': size,
    'ytick.labelsize': size,
    'legend.fontsize': size+2,
    'font.size': size
})

model = tf.keras.models.load_model(h5_file)

# Collect all weights (excluding biases if you prefer)
weights = []
for layer in model.layers:
    for w in layer.get_weights():
        weights.append(w.flatten())

# Combine all weights into one array
all_weights = np.concatenate(weights)

# Compute magnitudes
magnitudes = np.abs(all_weights)

# Plot histogram
plt.figure(figsize=(8, 6))
plt.hist(magnitudes, bins=bins, color='blue', edgecolor='black')
plt.title('Histogram of Weight Magnitudes with L2 regularization')
plt.xlabel('Magnitude')
plt.ylabel('Frequency')
plt.grid(alpha=0.3)
plt.tight_layout()
plt.show()
plt.savefig('L2_plot.png')