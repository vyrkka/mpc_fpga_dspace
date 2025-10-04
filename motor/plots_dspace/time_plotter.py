import matplotlib.pyplot as plt
import numpy as np

plt.style.use('seaborn-v0_8')
with open(f'data.csv','w') as ar_data:
    ar_data.write('task t_mean t_max delta_base\n')
base = 1
with open(f'data.csv','a') as ar_data:

    for task in ['base', 'input', 'reference', 'output']:

        t = []
        task_timer_secs= []
        ar = open(f'controldesk_times/t_{task}.csv')
        data_found = False
        for linea in ar:
            if 'trace_values' in linea:
                data_found = True
                linea = linea[12:]
            if(data_found):
                data = linea.strip().split(',')[1:]
                data = [float(k) for k in data]
                if(len(data) == 0):
                    break            
                t.append(data[0])
                task_timer_secs.append(data[1])
                



        task_timer_us = [1000000*k for k in task_timer_secs]
        #Plot
        
        # Create the plot
        plt.figure(figsize=(10, 6.5))
        size = 20
        plt.rcParams.update({
            'axes.titlesize': size,
            'axes.labelsize': size,
            'xtick.labelsize': size,
            'ytick.labelsize': size,
            'legend.fontsize': size-3,
            'font.size': size
        })
        k_inf = 0
        k_sup = len(t)
        plt.plot(t[k_inf:k_sup], task_timer_us[k_inf:k_sup], linestyle='-', color='k')

        # Add labels and title
        plt.xlabel('Time [s]')
        plt.ylabel('Execution time [us]')
        plt.title(f'Execution times for task: {task.upper()} running for 1[s]')
        #plt.legend()

        # Display the plot
        plt.grid(True)
        plt.show()
        plt.savefig(f'plots_times/{task}_exe_time.png')
        

        #Calculos:
        mean = round(np.mean(task_timer_us), 2)
        maximo = round(max(task_timer_us), 2)
        ar_data.write(f'{task} {mean:.2f} ')
        if(base):
            base = 0
            mean_base = mean
            ar_data.write(f'{maximo:.2f} {mean:.2f}\n')
        else:
            ar_data.write(f'{maximo:.2f} ')
            delta = mean - mean_base
            ar_data.write(f'{delta:.2f}\n')
        






            #Zoom
        '''
        inf = 183.94
        sup = 183.96
        k_inf = 0
        k_sup = 0
        for k in range(0,len(t)):
            if t[k] > inf:
                k_inf = k
                break
        for k in range(0,len(t)):
            if t[k] > sup:
                k_sup = k
                break              
        '''

import pandas as pd

# Read CSV
df = pd.read_csv('data.csv', sep = ' ')
tasks = df['task']
t_mean = df['t_mean']
t_max = df['t_max']
delta_base = df['delta_base']

x = np.arange(len(tasks))
width = 0.25

size = 18
plt.rcParams.update({
    'axes.titlesize': size,
    'axes.labelsize': size,
    'xtick.labelsize': size,
    'ytick.labelsize': size,
    'legend.fontsize': 14,
    'font.size': size
})
fig, ax = plt.subplots(figsize=(10, 6))

ax.barh(x + width, delta_base[::-1], width, label='Estimated mean task execution time')
ax.barh(x, t_mean[::-1], width, label='Mean measured turnaroundTime')
ax.barh(x - width, t_max[::-1], width, label='Max measured turnaroundTime')

ax.set_xlabel('Time [us]')
ax.set_ylabel('Tasks')
ax.set_title('Processor latency characterization')
ax.set_yticks(x)
ax.set_yticklabels(tasks[::-1])
ax.legend(loc='best', bbox_to_anchor=(1, 1))

plt.tight_layout()
plt.show()
plt.savefig('processor_timing.png')


