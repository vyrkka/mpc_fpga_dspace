import matplotlib.pyplot as plt
from matplotlib.patches import Patch



# Use seaborn style
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

fig, ax = plt.subplots(figsize=(16, 6))
# Data
categories = ['FPGA explicit', 'FPGA implicit', 'Measured mean', 'Estimated mean', 'Measured max']
values = [0.67, 17.77, 5.01, 5.37, 6.12]

# Get default color cycle from current style


palette = plt.rcParams['axes.prop_cycle'].by_key()['color']

# Assign colors from palette
color_cat1 = palette[0]  # First category color
color_cat2 = palette[3]  # Second category color
colors = [color_cat1, color_cat1, color_cat2, color_cat2, color_cat2]

# Create horizontal bar plot
plt.barh(categories, values, color=colors)

# Add legend
legend_elements = [
    Patch(facecolor=color_cat2, label='Processor'),
    Patch(facecolor=color_cat1, label='FPGA')
]
plt.legend(handles=legend_elements, loc='upper right')

# Labels and title
plt.xlabel('Time [us]', fontsize=size)
#plt.ylabel('Items')
plt.title('Processor and FPGA latencies', fontsize=size)

plt.grid(axis='x', linestyle='--', alpha=0.7)
plt.show()
plt.savefig('loop_timings.png')