import matplotlib.pyplot as plt
t = []
pert = []
u_act  = []
vel = []
pos = []
pos_est = []
ref = []
vel_est = []
implementation = 'exp'
sim_lvl = 'fis'
width = 21
integer_part = 7
ar = open(f'controldesk_data/{implementation}_{sim_lvl}_w{width}.csv')
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
        #HIL
        #pert.append(data[6])
        #u_act.append(data[3])
        #vel.append(data[2])
        #pos.append(data[5])
        #ref.append(data[4])
        #vel_est.append(data[8])

        #FIS EXP
        pert.append(data[7])
        u_act.append(data[3])
        #vel.append(data[1])
        pos.append(data[6])
        ref.append(data[5])
        vel_est.append(data[2])

        #caso aparte...
        #pert.append(data[5])
        #u_act.append(data[2])
        #pos.append(data[4])
        #vel_est.append(data[1])


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

k_inf = 1500
k_sup = 41500

#ref = [0.174533 for k in range(0,len(t))]
#for k in range(5030,15030):
    #ref[k] = 0.174533*35
#for k in range(25030,35030):
    #ref[k] = 0.174533*35
# Create the plot
plt.figure(figsize=(10, 5))
plt.rcParams.update({'font.size': 15.5})




#plt.plot(t[k_inf:k_sup], [x - y for x, y in zip(pos, pos_est)][k_inf:k_sup], linestyle='-', color='b', label='pos')
plt.plot(t[k_inf:k_sup], pert[k_inf:k_sup], linestyle='-', color='b', label='pert')
# Plot ref
plt.plot(t[k_inf:k_sup], ref[k_inf:k_sup], linestyle='--', color='k', label='ref')
# Plot u
plt.plot(t[k_inf:k_sup], u_act[k_inf:k_sup], linestyle='-', color='g', label='u')
# Plot vel
#plt.plot(t[k_inf:k_sup], vel[k_inf:k_sup], linestyle='-', color='y', label='vel')

plt.plot(t[k_inf:k_sup], pos[k_inf:k_sup], linestyle='-', color='m', label='pos')
# Plot vel_est
plt.plot(t[k_inf:k_sup], vel_est[k_inf:k_sup], linestyle='-', color='r', label='vel_est')

# Add labels and title
plt.xlabel('Time [s]')
plt.ylabel('Data')
plt.title(f'Explicit MPC for servomotor (W={width}, Q={integer_part})')
plt.legend()

# Display the plot
plt.grid(True)
plt.show()
plt.savefig(f'plots/{implementation}_{sim_lvl}_w{width}.png')