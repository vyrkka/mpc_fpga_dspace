import os
import re
import csv
import matplotlib.pyplot as plt
from collections import defaultdict

# ---- Change only this line to update the model name ----
model = "motorA"
max_rmse = 0.05 # Replace with your desired threshold
# --------------------------------------------------------

base_path = model
folder_pattern = re.compile(rf"^{re.escape(model)}L(\d+)M(\d+)$")
file_pattern = "statsL{}M{}.csv"

rmse_data = {
    "u0": defaultdict(list),
    "u1": defaultdict(list),
    "Average": defaultdict(list)
}

for folder in os.listdir(base_path):
    match = folder_pattern.match(folder)
    if not match:
        continue

    L, M = map(int, match.groups())
    stats_path = os.path.join(base_path, folder, file_pattern.format(L, M))

    if not os.path.isfile(stats_path):
        print(f"Missing file: {stats_path}")
        continue

    with open(stats_path, newline="") as f:
        reader = csv.DictReader(f)
        for row in reader:
            label = row['u'].strip()
            rmse = float(row['rmse'])
            if label in rmse_data:
                rmse_data[label][L].append((M, rmse))
'''
# Sort the M values for plotting
for label in rmse_data:
    for L in rmse_data[label]:
        rmse_data[label][L].sort()

# Plotting
#labels = ["u0", "u1", "Average"]
labels = ["Average"]
colors = plt.cm.get_cmap('tab10')

for i, label in enumerate(labels):
    plt.figure(figsize=(8, 5))
    for j, (L, values) in enumerate(sorted(rmse_data[label].items())):
        M_vals = [m for m, _ in values]
        RMSE_vals = [rmse for _, rmse in values]
        plt.plot(M_vals, RMSE_vals, marker='o', label=f"L={L}", color=colors(j))'''

# Sort the M values for plotting
for label in rmse_data:
    for L in rmse_data[label]:
        # Filter out values with RMSE > max_rmse and sort the remaining
        rmse_data[label][L] = sorted([(m, rmse) for m, rmse in rmse_data[label][L] if rmse <= max_rmse])
plt.rcParams.update({'font.size': 16})
# Plotting
labels = ["Average"]
colors = plt.cm.get_cmap('tab10')
plt.rcParams['font.family'] = 'serif'
plt.rcParams['font.serif'] = ['Times New Roman'] + plt.rcParams['font.serif']
for i, label in enumerate(labels):
    plt.figure(figsize=(8, 5))
    for j, (L, values) in enumerate(sorted(rmse_data[label].items())):
        if not values:
            continue  # Skip empty lists after filtering
        M_vals = [m for m, _ in values]
        RMSE_vals = [rmse for _, rmse in values]
        plt.plot(M_vals, RMSE_vals, marker='o', label=f"L={L}", color=colors(j))
    #plt.title(f"{model} - RMSE vs M for {label}")
    plt.title(f"DNNs trained with dataset A - RMSE vs (L,M)")
    plt.xlabel("Number of hidden layers M")
    plt.ylabel("RMSE")
    plt.grid(True)
    plt.legend()
    plt.tight_layout()
    plt.savefig(f"{model}_rmse_plot_sat_margin.png")
    plt.show()
