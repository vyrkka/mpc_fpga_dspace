import matplotlib.pyplot as plt
# Use seaborn style
plt.style.use('seaborn-v0_8')
size = 17
plt.rcParams.update({
    'axes.titlesize': size,
    'axes.labelsize': size,
    'xtick.labelsize': size,
    'ytick.labelsize': size,
    'legend.fontsize': size+2,
    'font.size': size
})
# Data for each pie chart
labels_list = [['base', 'input', 'reference', 'output'],
['MPC', 'Estimation', 'Other'],
['MPC', 'Estimation', 'Other']]

values_list = [
    [2.1, 1.42, 0.64, 1.21],
    [17.52, 0.22, 0.03],
    [0.38, 0.22, 0.07]
]

# Create figure with 3 subplots
fig, axes = plt.subplots(1, 3, figsize=(15, 3))

titulos = ['Processor', 'FPGA implicit', 'FPGA explicit']
# Plot each pie chart

for i, ax in enumerate(axes):
    wedges, _ = ax.pie(values_list[i], startangle=90)  # No labels here
    ax.set_title(titulos[i], fontsize=size+2)
    ax.axis('equal')
    
    # Create legend with absolute values
    legend_labels = [f"{l}: {v}[us]" for l, v in zip(labels_list[i], values_list[i])]
    ax.legend(wedges, legend_labels, loc='center left', bbox_to_anchor=(1, 0.5))

plt.suptitle('Processor and FPGA tasks', fontsize=size+3)
plt.tight_layout()
plt.show()
plt.savefig('proc_pie.png')