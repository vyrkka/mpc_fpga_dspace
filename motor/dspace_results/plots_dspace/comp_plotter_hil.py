import matplotlib.pyplot as plt
t32 = []
u_act32  = []
pos32 = []
ref32 = []
vel32 = []
implementation = 'imp'
sim_lvl = 'hil'
width = 32
integer_part = 8
ar32 = open(f'controldesk_data/{implementation}_{sim_lvl}_w{width}.csv')
data_found = False
for linea in ar32:
    if 'trace_values' in linea:
        data_found = True
        linea = linea[12:]
    if(data_found):
        data = linea.strip().split(',')[1:]
        data = [float(k) for k in data]
        if(len(data) == 0):
            break
        t32.append(data[0])

        u_act32.append(data[3])
        pos32.append(data[5])
        vel32.append(data[2])

t16 = []
u_act16  = []
pos16 = []
ref16 = []
vel16 = []
width = 16
integer_part = 7
ar16 = open(f'controldesk_data/{implementation}_{sim_lvl}_w{width}.csv')
data_found = False
for linea in ar16:
    if 'trace_values' in linea:
        data_found = True
        linea = linea[12:]
    if(data_found):
        data = linea.strip().split(',')[1:]
        data = [float(k) for k in data]
        if(len(data) == 0):
            break
        t16.append(data[0])

        u_act16.append(data[3])
        pos16.append(data[5])
        vel16.append(data[2])


'''
ref32 = [0.174533 for k in range(0,len(t32))]
for k in range(5030,15030):
    ref32[k] = 0.174533*35
for k in range(25030,35030):
    ref32[k] = 0.174533*35

ref16 = [0.174533 for k in range(0,len(t16))]
for k in range(4766,14766):
    ref16[k] = 0.174533*35
for k in range(24766,34766):
    ref16[k] = 0.174533*35
'''


ref = [0.174533 for k in range(0,40000)]
for k in range(0,10000):
    ref[k] = 0.174533*35
for k in range(20000,30000):
    ref[k] = 0.174533*35

# Create the plot
plt.figure(figsize=(10, 5))
plt.rcParams.update({'font.size': 15.5})


k_inf = 0
k_sup = 40000
delta32 = 3165
delta16 = 4542
# Plot ref
plt.plot(t32[k_inf:k_sup], ref[k_inf:k_sup], linestyle='--', color='k', label='ref')
# u signals
plt.plot(t16[k_inf:k_sup], u_act16[k_inf+delta16:k_sup+delta16],
         linestyle='-', color='m', label='u (W=16)')
plt.plot(t32[k_inf:k_sup], u_act32[k_inf+delta32:k_sup+delta32],
         linestyle='-', color='b', label='u (W=32)')

# pos signals
plt.plot(t16[k_inf:k_sup], pos16[k_inf+delta16:k_sup+delta16],
         linestyle='-', color='r', label='pos (W=16)')

plt.plot(t32[k_inf:k_sup], pos32[k_inf+delta32:k_sup+delta32],
         linestyle='-', color='g', label='pos (W=32)')

# vel signals
plt.plot(t16[k_inf:k_sup], vel16[k_inf+delta16:k_sup+delta16],
         linestyle='-', color='darkorange', label='vel (W=16)')
plt.plot(t32[k_inf:k_sup], vel32[k_inf+delta32:k_sup+delta32],
         linestyle='-', color='c', label='vel (W=32)')

# Add labels and title
plt.xlabel('Time [s]')
plt.ylabel('Data')
plt.title(f'Implicit HIL MPC for servomotor (W=32 and W=16)')
plt.legend()

# Display the plot
plt.grid(True)
plt.show()
plt.savefig(f'plots/comp_hil_imp.png')