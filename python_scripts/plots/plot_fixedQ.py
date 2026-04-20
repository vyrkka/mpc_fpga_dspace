import os
import re
import pandas as pd
import matplotlib.pyplot as plt

problem = 'der2'
L=4
M=30
diff_W_Q = 16

labels_text = {'u0':'vsd', 'u1':'vsq', 'Average': 'average'}
if problem == 'der1':
    red = 'DNN-Z'
    labels_text = {'u0':'vsd', 'u1':'vsq', 'Average': 'average'}
elif problem == 'der2':
    red = 'DNN-P'
    labels_text = {'u0':'Vc', 'u1':'\u03c9c', 'Average': 'average'}
else:
    red = problem
    labels_text = {'u0':'u0', 'u1':'u1', 'Average': 'Average'}

baseline_filename = None

# Directory containing the CSV files (use '.' for current directory)
data_dir = f'{problem}/{problem}L{L}M{M}'
# -----------------------------------

# regex to parse filenames like statsL4M30W25Q9.csv
pattern = re.compile(r'^statsL(?P<L>\d+)M(?P<M>\d+)W(?P<W>\d+)Q(?P<Q>\d+)\.csv$')

# collected values: label -> list of (W, rmse)
values = {'u0': [], 'u1': [], 'Average': []}
found_L = None
found_M = None

for fname in os.listdir(data_dir):
    m = pattern.match(fname)
    if not m:
        continue
    L = int(m.group('L')); M = int(m.group('M')); W = int(m.group('W')); Q = int(m.group('Q'))

    # condition: W - Q == diff_W_Q
    if (W - Q) != diff_W_Q:
        continue

    if found_L is None:
        found_L, found_M = L, M

    fullpath = os.path.join(data_dir, fname)
    try:
        df = pd.read_csv(fullpath, index_col=0)
    except Exception as e:
        print(f"Warning: could not read {fname}: {e}")
        continue

    for label in ['u0', 'u1', 'Average']:
        if label in df.index and 'rmse' in df.columns:
            try:
                rmse_val = float(df.loc[label, 'rmse'])
                values[label].append((Q, rmse_val))
            except Exception as e:
                print(f"Warning parsing rmse for {label} in {fname}: {e}")
        else:
            print(f"Warning: {label} or rmse column not found in {fname}")

# Sort and split into ws/rmses
for label in values:
    values[label].sort(key=lambda x: x[0])
    ws = [w for w, _ in values[label]]
    rmses = [r for _, r in values[label]]
    values[label] = (ws, rmses)

# detect baseline file if not set
baseline = {}
if baseline_filename is None and found_L is not None:
    candidate = f"statsL{found_L}M{found_M}.csv"
    if os.path.exists(os.path.join(data_dir, candidate)):
        baseline_filename = candidate

if baseline_filename is not None and os.path.exists(os.path.join(data_dir, baseline_filename)):
    try:
        df_base = pd.read_csv(os.path.join(data_dir, baseline_filename), index_col=0)
        for label in ['u0', 'u1', 'Average']:
            if label in df_base.index and 'rmse' in df_base.columns:
                baseline[label] = float(df_base.loc[label, 'rmse'])
            else:
                print(f"Baseline file missing {label} or rmse column: {baseline_filename}")
    except Exception as e:
        print(f"Could not read baseline file {baseline_filename}: {e}")
else:
    if baseline_filename is not None:
        print(f"Baseline file not found: {baseline_filename}")
    else:
        print("No baseline filename provided and none auto-detected. Skipping baseline.")

# Plotting
plt.figure(figsize=(9, 6))

plot_styles = {
    'u0': {'marker': 'o', 'linestyle': '-', 'display_label': f"{labels_text['u0']} (fixed point Δ={diff_W_Q})"},
    'u1': {'marker': 's', 'linestyle': '-', 'display_label': f"{labels_text['u1']} (fixed point Δ={diff_W_Q})"},
    'Average': {'marker': '^', 'linestyle': '-', 'display_label': f"{labels_text['Average']} (fixed point Δ={diff_W_Q})"},
}

# store colors used for each label so baselines can match
color_map = {}
any_plotted = False
minW = None; maxW = None

for label in ['u0', 'u1', 'Average']:
    ws, rmses = values[label]
    if len(ws) == 0:
        print(f"No data found for {label} with condition W-Q=={diff_W_Q}.")
        continue
    # plot and capture the Line2D to read its color
    line = plt.plot(ws, rmses, marker=plot_styles[label]['marker'],
                    linestyle=plot_styles[label]['linestyle'],
                    label=plot_styles[label]['display_label'])[0]
    color_map[label] = line.get_color()
    any_plotted = True
    if minW is None:
        minW = min(ws); maxW = max(ws)
    else:
        minW = min(minW, min(ws)); maxW = max(maxW, max(ws))

if not any_plotted:
    raise SystemExit(f"No files matched the condition W-Q=={diff_W_Q}. Exiting.")

# Baseline horizontal lines using same colors as plots (if baseline exists)
if baseline:
    xmin = minW
    xmax = maxW
    for label, y in baseline.items():
        label_text = labels_text[label]
        color = color_map.get(label, None)
        if color is not None:
            plt.hlines(y=y, xmin=xmin, xmax=xmax,
                       colors=color, linestyles='--', linewidth=1.6,
                       label=f'{label_text} (floating point)')
        else:
            # fallback: default style if we didn't plot that label
            plt.hlines(y=y, xmin=xmin, xmax=xmax,
                       linestyles='--', linewidth=1.6,
                       label=f'{label_text} (floating point)')

plt.xlabel('Integer part bit width Q')
plt.ylabel('RMSE')
plt.title(f'RMSE vs W for {red} (with W-Q = {diff_W_Q})')
plt.grid(True, linestyle=':', alpha=0.7)
plt.legend()
plt.tight_layout()

outname = f'rmse_vs_W_dW{diff_W_Q}_{problem}.png'
plt.savefig(outname, dpi=300)
print(f"Saved figure to {outname}")
plt.show()
