% Main Initialization
InitParameters;
InitMPCs;
[xs.sim.Ref_Rand, xs.sim.Param_Rand, xs.sim.BKR_Rand, xs.sim.X0_Rand] = deal(0,0,0,0);
InitRandomize;
%Parámetros DNN1
use_DNN1 = 0;
pruned_DNN1 = 1;
L1 = 4;
M1 = 30;
vars_type1 = "fixed";
h5_type1 = "fixed";
W1 = 22;
Q1 = 8;
%Parámetros DNN2
use_DNN2 = 0;
pruned_DNN2 = 1;
L2 = 4;
M2 = 30;
vars_type2 = "fixed";
h5_type2 = "fixed";
W2 = 15;
Q2 = 4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%DNN1

F1_ = fi_config(W1,Q1);
L1 = int2str(L1);
M1 = int2str(M1);
if(pruned_DNN1)
    pruned_str1 = "_pruned";
else
    pruned_str1 = "";
end


%DNN1 h5
if h5_type1 == "float"
    h5_file1 = strcat("float_der1_L",L1,"M",M1,pruned_str1,"_matlab.h5");
else
    h5_file1 = strcat("fixed_der1_L",L1,"M",M1,"W",int2str(W1), "Q", int2str(Q1),pruned_str1,"_matlab.h5");
end
init_net_func1 = strcat('init_net_',vars_type1,"L",L1);
parsDNN1 = Simulink.Parameter;
if(use_DNN1)
    parsDNN1.Value = feval(init_net_func1,h5_file1, W1, Q1, F1_);
else
    parsDNN1.Value = 0;
end
parsDNN1.CoderInfo.StorageClass = 'ExportedGlobal';

%DNN1 eval fx
eval_net_func1 = Simulink.Parameter;
eval_net_func1.Value = int8(char(strcat('eval_net_',vars_type1,'L',L1)));
eval_net_func1.CoderInfo.StorageClass = 'ExportedGlobal';

%DNN1 Norm/Denorm Data
mins_max_str1.in_min = [-29.9984982619493; -11.9519672429897; -139.120974090941; -180.063288691763; -31.7680672345597; -13.2194351559075; 0.0550182419076748; -0.999999999999548; -1.0];
mins_max_str1.in_max = [6.51022552918595; 29.1600782986971; 265.319808622119; 174.208582229167; 8.24160446134765; 30.0125252701555; 184.000000040685; 1.0; 0.999999999999982];
mins_max_str1.out_min = [-158.229983586825; -183.999879383484];
mins_max_str1.out_max = [183.999964529286; 183.999777459522];
mins_max1 = Simulink.Parameter;
mins_max1.Value = mins_max_str1;
mins_max1.CoderInfo.StorageClass = 'ExportedGlobal';
%Use DNN1
use_net1 = Simulink.Parameter;
use_net1.Value = use_DNN1;
use_net1.CoderInfo.StorageClass = 'ExportedGlobal';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%DNN2
F2_ = fi_config(W2,Q2);
L2 = int2str(L2);
M2 = int2str(M2);
if(pruned_DNN2)
    pruned_str2 = "_pruned";
else
    pruned_str2 = "";
end


%DNN2 h5
if h5_type2 == "float"
    h5_file2 = strcat("float_der2_L",L2,"M",M2,pruned_str2,"_matlab.h5");
else
    h5_file2 = strcat("fixed_der2_L",L2,"M",M2,"W",int2str(W2), "Q", int2str(Q2),pruned_str2,"_matlab.h5");
end
init_net_func2 = strcat('init_net_',vars_type2,"L",L2);
parsDNN2 = Simulink.Parameter;
if(use_DNN2)
    parsDNN2.Value = feval(init_net_func2,h5_file2, W2, Q2, F2_);
else
    parsDNN2.Value = 0;
end
parsDNN2.CoderInfo.StorageClass = 'ExportedGlobal';

%DNN2 eval fx
eval_net_func2 = Simulink.Parameter;
eval_net_func2.Value = int8(char(strcat('eval_net_',vars_type2,'L',L2)));
eval_net_func2.CoderInfo.StorageClass = 'ExportedGlobal';

%DNN2 Norm/Denorm Data
mins_max_str2.in_min = [-31.7680672345597; -13.2194351559075; -0.059493431818084; 141.583815204718; 309.450094584183; -8.99912979796483; -8.98816706879783];
mins_max_str2.in_max = [8.24160446134765; 30.0125252701555; 0.309685902457694; 159.645243436572; 318.870797338407; 8.99512915034276; 8.99710714784405];
mins_max_str2.out_min = [126.342820885305; 307.87607959972];
mins_max_str2.out_max = [184.000000040685; 320.442451645256];
mins_max2 = Simulink.Parameter;
mins_max2.Value = mins_max_str2;
mins_max2.CoderInfo.StorageClass = 'ExportedGlobal';

%Use DNN2
use_net2 = Simulink.Parameter;
use_net2.Value = use_DNN2;
use_net2.CoderInfo.StorageClass = 'ExportedGlobal';

% Underflow/Overflow Logs
% P = fipref;
% P.LoggingMode = 'on';
% P.NumericTypeDisplay = 'none';
% P.FimathDisplay = 'none';



% load_system("SIM_DNNs")
% %open_system("SIM_DNNs/Scope3")
out_MPC = sim("SIM_DNNs");
%vc = vc_ts.Data;
%vcd = [vc(:,3), vc(:,1)];
%vcq = [vc(:,4), vc(:,2)];

%legend('$v_{cd}$', '$v_{cq}$', '$v_{cd}$ ref', '$v_{cq}$ ref','Interpreter','latex')
% 
% tout = out_DNN.tout;
% if_mag = out_DNN.ifmag;
% imax = out_DNN.imax;
% fs = out_DNN.fs;
% fg = out_DNN.fg;
% igdq = out_DNN.igdq;
% igr = out_DNN.igr;
% hold on
% imax2 = repmat( imax, [1,length(tout)] );
% subplot(3,1,1);
% plot(tout,[if_mag, imax2']);
% legend("if_{mag}","if_{magmax}")
% title("Nivel red medio / qt alta")
% subplot(3,1,2);
% fg2 = repmat( fg, [1,length(tout)] );
% plot(tout,[fs fg2']);
% legend("fs","fg")
% subplot(3,1,3);
% plot(tout,[igdq igr])
% %legend("igdq1","igdq2", "igr1", "igr2")
% saveas(gcf, "plots/nivel2qt3.png")
%close(gcf);

% Main Initialization
InitParameters;
InitMPCs;
[xs.sim.Ref_Rand, xs.sim.Param_Rand, xs.sim.BKR_Rand, xs.sim.X0_Rand] = deal(0,0,0,0);
InitRandomize;
%Parámetros DNN1
use_DNN1 = 1;
pruned_DNN1 = 1;
L1 = 4;
M1 = 30;
vars_type1 = "fixed";
h5_type1 = "fixed";
W1 = 22;
Q1 = 8;
%Parámetros DNN2
use_DNN2 = 1;
pruned_DNN2 = 1;
L2 = 4;
M2 = 30;
vars_type2 = "fixed";
h5_type2 = "fixed";
W2 = 15;
Q2 = 4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%DNN1

F1_ = fi_config(W1,Q1);
L1 = int2str(L1);
M1 = int2str(M1);
if(pruned_DNN1)
    pruned_str1 = "_pruned";
else
    pruned_str1 = "";
end


%DNN1 h5
if h5_type1 == "float"
    h5_file1 = strcat("float_der1_L",L1,"M",M1,pruned_str1,"_matlab.h5");
else
    h5_file1 = strcat("fixed_der1_L",L1,"M",M1,"W",int2str(W1), "Q", int2str(Q1),pruned_str1,"_matlab.h5");
end
init_net_func1 = strcat('init_net_',vars_type1,"L",L1);
parsDNN1 = Simulink.Parameter;
if(use_DNN1)
    parsDNN1.Value = feval(init_net_func1,h5_file1, W1, Q1, F1_);
else
    parsDNN1.Value = 0;
end
parsDNN1.CoderInfo.StorageClass = 'ExportedGlobal';

%DNN1 eval fx
eval_net_func1 = Simulink.Parameter;
eval_net_func1.Value = int8(char(strcat('eval_net_',vars_type1,'L',L1)));
eval_net_func1.CoderInfo.StorageClass = 'ExportedGlobal';

%DNN1 Norm/Denorm Data
mins_max_str1.in_min = [-29.9984982619493; -11.9519672429897; -139.120974090941; -180.063288691763; -31.7680672345597; -13.2194351559075; 0.0550182419076748; -0.999999999999548; -1.0];
mins_max_str1.in_max = [6.51022552918595; 29.1600782986971; 265.319808622119; 174.208582229167; 8.24160446134765; 30.0125252701555; 184.000000040685; 1.0; 0.999999999999982];
mins_max_str1.out_min = [-158.229983586825; -183.999879383484];
mins_max_str1.out_max = [183.999964529286; 183.999777459522];
mins_max1 = Simulink.Parameter;
mins_max1.Value = mins_max_str1;
mins_max1.CoderInfo.StorageClass = 'ExportedGlobal';
%Use DNN1
use_net1 = Simulink.Parameter;
use_net1.Value = use_DNN1;
use_net1.CoderInfo.StorageClass = 'ExportedGlobal';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%DNN2
F2_ = fi_config(W2,Q2);
L2 = int2str(L2);
M2 = int2str(M2);
if(pruned_DNN2)
    pruned_str2 = "_pruned";
else
    pruned_str2 = "";
end


%DNN2 h5
if h5_type2 == "float"
    h5_file2 = strcat("float_der2_L",L2,"M",M2,pruned_str2,"_matlab.h5");
else
    h5_file2 = strcat("fixed_der2_L",L2,"M",M2,"W",int2str(W2), "Q", int2str(Q2),pruned_str2,"_matlab.h5");
end
init_net_func2 = strcat('init_net_',vars_type2,"L",L2);
parsDNN2 = Simulink.Parameter;
if(use_DNN2)
    parsDNN2.Value = feval(init_net_func2,h5_file2, W2, Q2, F2_);
else
    parsDNN2.Value = 0;
end
parsDNN2.CoderInfo.StorageClass = 'ExportedGlobal';

%DNN2 eval fx
eval_net_func2 = Simulink.Parameter;
eval_net_func2.Value = int8(char(strcat('eval_net_',vars_type2,'L',L2)));
eval_net_func2.CoderInfo.StorageClass = 'ExportedGlobal';

%DNN2 Norm/Denorm Data
mins_max_str2.in_min = [-31.7680672345597; -13.2194351559075; -0.059493431818084; 141.583815204718; 309.450094584183; -8.99912979796483; -8.98816706879783];
mins_max_str2.in_max = [8.24160446134765; 30.0125252701555; 0.309685902457694; 159.645243436572; 318.870797338407; 8.99512915034276; 8.99710714784405];
mins_max_str2.out_min = [126.342820885305; 307.87607959972];
mins_max_str2.out_max = [184.000000040685; 320.442451645256];
mins_max2 = Simulink.Parameter;
mins_max2.Value = mins_max_str2;
mins_max2.CoderInfo.StorageClass = 'ExportedGlobal';

%Use DNN2
use_net2 = Simulink.Parameter;
use_net2.Value = use_DNN2;
use_net2.CoderInfo.StorageClass = 'ExportedGlobal';

% Underflow/Overflow Logs
% P = fipref;
% P.LoggingMode = 'on';
% P.NumericTypeDisplay = 'none';
% P.FimathDisplay = 'none';

vc_ts_MPC = out_MPC.vc;
vs_ts_MPC = out_MPC.vs;
if_ts_MPC = out_MPC.ifdq;
ig_ts_MPC = out_MPC.igdq;
igr_ts_MPC = out_MPC.igr;
fc_ts_MPC = out_MPC.fc;
vcp_ts_MPC = out_MPC.vcp;
delta_ts_MPC = out_MPC.delta;
vs_abc_ts_MPC = out_MPC.vs_abc;

out_DNN = sim("SIM_DNNs");

vc_ts_DNN = out_DNN.vc;
vs_ts_DNN = out_DNN.vs;
if_ts_DNN = out_DNN.ifdq;
ig_ts_DNN = out_DNN.igdq;
fc_ts_DNN = out_DNN.fc;
vcp_ts_DNN = out_DNN.vcp;
delta_ts_DNN = out_DNN.delta;
vs_abc_ts_DNN = out_DNN.vs_abc;

t_common = intersect(vc_ts_MPC.Time, vc_ts_DNN.Time);

%vc
vc_ts_MPC_sync = resample(vc_ts_MPC, t_common);
vc_MPC = vc_ts_MPC_sync.Data;
vcd = [vc_MPC(:,3), vc_MPC(:,1)];
vcq = [vc_MPC(:,4), vc_MPC(:,2)];

vc_ts_DNN_sync = resample(vc_ts_DNN, t_common);
vc_DNN = vc_ts_DNN_sync.Data;
vcd = [vcd, vc_DNN(:,1)];
vcq = [vcq, vc_DNN(:,2)];

%if
if_ts_MPC_sync = resample(if_ts_MPC, t_common);
if_ts_DNN_sync = resample(if_ts_DNN, t_common);
if_MPC = if_ts_MPC_sync.Data;
if_DNN = if_ts_DNN_sync.Data;
ifd = [if_DNN(:,1), if_MPC(:,1)];
ifq = [if_DNN(:,2), if_MPC(:,2)];

%vs
vs_ts_MPC_sync = resample(vs_ts_MPC, t_common);
vs_ts_DNN_sync = resample(vs_ts_DNN, t_common);
vs_MPC = vs_ts_MPC_sync.Data;
vs_DNN = vs_ts_DNN_sync.Data;
vsd = [vs_DNN(:,1), vs_MPC(:,1)];
vsq = [vs_DNN(:,2), vs_MPC(:,2)];

%ig
igr_ts_MPC_sync = resample(igr_ts_MPC, t_common);
ig_ts_MPC_sync = resample(ig_ts_MPC, t_common);
ig_ts_DNN_sync = resample(ig_ts_DNN, t_common);
igr_MPC_DNN = igr_ts_MPC_sync.Data;
ig_MPC = ig_ts_MPC_sync.Data;
ig_DNN = ig_ts_DNN_sync.Data;
igd = [igr_MPC_DNN(:,1), ig_DNN(:,1), ig_MPC(:,1)];
igq = [igr_MPC_DNN(:,2), ig_DNN(:,2), ig_MPC(:,2)];

%delta
delta_ts_MPC_sync = resample(delta_ts_MPC, t_common);
delta_ts_DNN_sync = resample(delta_ts_DNN, t_common);
delta_MPC = delta_ts_MPC_sync.Data;
delta_DNN = delta_ts_DNN_sync.Data;

%fs
fc_ts_MPC_sync = resample(fc_ts_MPC, t_common);
fc_ts_DNN_sync = resample(fc_ts_DNN, t_common);
fc_MPC = fc_ts_MPC_sync.Data;
fc_DNN = fc_ts_DNN_sync.Data;

%vcp
vcp_ts_MPC_sync = resample(vcp_ts_MPC, t_common);
vcp_ts_DNN_sync = resample(vcp_ts_DNN, t_common);
vcp_MPC = vcp_ts_MPC_sync.Data;
vcp_DNN = vcp_ts_DNN_sync.Data;

%vs_alphabeta
vs_abc_ts_MPC_sync = resample(vs_abc_ts_MPC, t_common);
vs_abc_ts_DNN_sync = resample(vs_abc_ts_DNN, t_common);
vs_abc_MPC = vs_abc_ts_MPC_sync.Data;
vs_abc_DNN = vs_abc_ts_DNN_sync.Data;

% figure
% hold on
% 
% % 1) DNN (bottom)
% plot(t_common, vcd(:,3), '-', ...
%     'LineWidth', 0.6, ...
%     'Color', [0.0 0.45 0.74])    % blue
% 
% % 2) MPC (middle)
% plot(t_common, vcd(:,2), '-', ...
%     'LineWidth', 0.6, ...
%     'Color', [0.85 0.33 0.10])   % orange
% 
% % 3) Reference (top)
% plot(t_common, vcd(:,1), '-.', ...
%     'LineWidth', 0.6, ...
%     'Color', [0.2 0.2 0.2])      % gray, dash-dot
% 
% grid on
% xlabel('Time [s]')
% ylabel('$v_{cd}$ [V]', 'Interpreter','latex')
% legend('DNN','MPC','Ref.', 'Location','best')
% saveas(gcf, "plots/vcd.png")
% close(gcf);
% 
% figure
% hold on
% 
% % 1) DNN (bottom)
% plot(t_common, vcq(:,3), '-', ...
%     'LineWidth', 0.6, ...
%     'Color', [0.0 0.45 0.74])    % blue
% 
% % 2) MPC (middle)
% plot(t_common, vcq(:,2), '-', ...
%     'LineWidth', 0.6, ...
%     'Color', [0.85 0.33 0.10])   % orange
% 
% 
% % 3) Reference (top)
% plot(t_common, vcq(:,1), '-.', ...
%     'LineWidth', 0.6, ...
%     'Color', [0.2 0.2 0.2])      % gray, dash-dot
% 
% grid on
% xlabel('Time [s]')
% ylabel('$v_{cq}$ [V]', 'Interpreter','latex')
% legend('DNN','MPC','Ref.', 'Location','best')
% saveas(gcf, "plots/vcq.png")
% close(gcf);
% 
% figure
% hold on
% 
% % 1) DNN (bottom)
% plot(t_common, ifd(:,1), '-', ...
%     'LineWidth', 0.6, ...
%     'Color', [0.0 0.45 0.74])    % blue
% 
% % 2) MPC (middle)
% plot(t_common, ifd(:,2), '-', ...
%     'LineWidth', 0.6, ...
%     'Color', [0.85 0.33 0.10])   % orange
% 
% 
% grid on
% xlabel('Time [s]')
% ylabel('$i_{fd}$ [A]', 'Interpreter','latex')
% legend('DNN','MPC','Ref.', 'Location','best')
% saveas(gcf, "plots/ifd.png")
% close(gcf);
% 
% figure
% hold on
% 
% % 1) DNN (bottom)
% plot(t_common, ifq(:,1), '-', ...
%     'LineWidth', 0.6, ...
%     'Color', [0.0 0.45 0.74])    % blue
% 
% % 2) MPC (middle)
% plot(t_common, ifq(:,2), '-', ...
%     'LineWidth', 0.6, ...
%     'Color', [0.85 0.33 0.10])   % orange
% 
% 
% grid on
% xlabel('Time [s]')
% ylabel('$i_{fq}$ [A]', 'Interpreter','latex')
% legend('DNN','MPC','Ref.', 'Location','best')
% saveas(gcf, "plots/ifq.png")
% close(gcf);


figure('Units','pixels','Position',[100 100 900 1400])
tiledlayout(6,1,'TileSpacing','compact','Padding','compact')

%% -------- v_cd --------
nexttile
hold on
plot(t_common, vcd(:,3), '-',  'LineWidth',0.6, 'Color',[0.0 0.45 0.74]) % DNN
plot(t_common, vcd(:,2), '-',  'LineWidth',0.6, 'Color',[0.85 0.33 0.10]) % MPC
plot(t_common, vcd(:,1), '-.', 'LineWidth',0.6, 'Color',[0.2 0.2 0.2])    % Ref
grid on
legend('DNN','MPC','Ref.','Location','best','FontSize',15)
ylabel('$v_{cd}$ [V]','Interpreter','latex','FontSize',18)
title('MPC vs DNN for ZLC: Filter Voltages and Currents','FontSize',18)

%% -------- v_cq --------
nexttile
hold on
plot(t_common, vcq(:,3), '-',  'LineWidth',0.6, 'Color',[0.0 0.45 0.74])
plot(t_common, vcq(:,2), '-',  'LineWidth',0.6, 'Color',[0.85 0.33 0.10])
plot(t_common, vcq(:,1), '-.', 'LineWidth',0.6, 'Color',[0.2 0.2 0.2])
grid on
ylabel('$v_{cq}$ [V]','Interpreter','latex','FontSize',18)

%% -------- i_fd --------
nexttile
hold on
plot(t_common, ifd(:,1), '-', 'LineWidth',0.6, 'Color',[0.0 0.45 0.74]) % DNN
plot(t_common, ifd(:,2), '-', 'LineWidth',0.6, 'Color',[0.85 0.33 0.10]) % MPC
grid on
ylabel('$i_{fd}$ [A]','Interpreter','latex','FontSize',18)
ylim([-6,6])

%% -------- i_fq --------
nexttile
hold on
plot(t_common, ifq(:,1), '-', 'LineWidth',0.6, 'Color',[0.0 0.45 0.74]) % DNN
plot(t_common, ifq(:,2), '-', 'LineWidth',0.6, 'Color',[0.85 0.33 0.10]) % MPC
grid on
ylabel('$i_{fq}$ [A]','Interpreter','latex','FontSize',18)

%% -------- v_sd --------
nexttile
hold on
plot(t_common, vsd(:,1), '-', 'LineWidth',0.6, 'Color',[0.0 0.45 0.74]) % DNN
plot(t_common, vsd(:,2), '-', 'LineWidth',0.6, 'Color',[0.85 0.33 0.10]) % MPC
grid on
ylabel('$v_{sd}$ [V]','Interpreter','latex','FontSize',18)

%% -------- v_sq --------
nexttile
hold on
plot(t_common, vsq(:,1), '-', 'LineWidth',0.6, 'Color',[0.0 0.45 0.74]) % DNN
plot(t_common, vsq(:,2), '-', 'LineWidth',0.6, 'Color',[0.85 0.33 0.10]) % MPC
grid on
ylabel('$v_{sq}$ [V]','Interpreter','latex','FontSize',18)
xlabel('Time [s]','FontSize',18)

%% -------- save --------
set(gcf,'Color','w')
saveas(gcf,"plots/zlc.png")
close(gcf)



%%%%%%%%%%%%%%%%%%%%%%%%
figure
tiledlayout(3,1,'TileSpacing','compact','Padding','compact')

%% -------- i_gd --------
nexttile
hold on
plot(t_common, igd(:,3), '-',  'LineWidth',0.6, 'Color',[0.0 0.45 0.74])
plot(t_common, igd(:,2), '-',  'LineWidth',0.6, 'Color',[0.85 0.33 0.10])
plot(t_common, igd(:,1), '-.', 'LineWidth',0.6, 'Color',[0.2 0.2 0.2])
ylim([-6.5,10])
grid on
ylabel('$i_{gd}$ [A]','Interpreter','latex')
legend('DNN','MPC','Ref.','Location','best')
title('MPC vs DNN for PLC: Grid Currents and Phase Angle')

%% -------- i_gq --------
nexttile
hold on
plot(t_common, igq(:,3), '-',  'LineWidth',0.6, 'Color',[0.0 0.45 0.74])
plot(t_common, igq(:,2), '-',  'LineWidth',0.6, 'Color',[0.85 0.33 0.10])
plot(t_common, igq(:,1), '-.', 'LineWidth',0.6, 'Color',[0.2 0.2 0.2])
ylim([-8,6])
grid on
ylabel('$i_{gq}$ [A]','Interpreter','latex')

%% -------- delta --------
nexttile
hold on
plot(t_common, delta_DNN, '-',  'LineWidth',0.6, 'Color',[0.0 0.45 0.74])
plot(t_common, delta_MPC, '-',  'LineWidth',0.6, 'Color',[0.85 0.33 0.10])
ylim([-0.06,0.06])
grid on
ylabel('$\delta$ [rad]','Interpreter','latex')
xlabel('Time [s]')
%% -------- save --------
set(gcf,'Color','w')
saveas(gcf,"plots/plc.png")
close(gcf)




%%%%%%%%%%%%%%%%%%%%%%%%
figure
tiledlayout(2,1,'TileSpacing','compact','Padding','compact')

%% -------- Vc --------
nexttile
hold on
plot(t_common, vcp_DNN, '-',  'LineWidth',0.6, 'Color',[0.0 0.45 0.74])
plot(t_common, vcp_MPC, '-',  'LineWidth',0.6, 'Color',[0.85 0.33 0.10])
grid on
ylabel('$V_{c}$ [V]','Interpreter','latex')
legend('DNN','MPC','Location','best')
title('MPC vs DNN for PLC: Filter Output Voltage and Frequency')

%% -------- fc --------
nexttile
hold on
plot(t_common, fc_DNN, '-',  'LineWidth',0.6, 'Color',[0.0 0.45 0.74])
plot(t_common, fc_MPC, '-',  'LineWidth',0.6, 'Color',[0.85 0.33 0.10])
ylim([48.9, 51.1 ])
grid on
ylabel('$f_{c}$ [Hz]','Interpreter','latex')
xlabel('Time [s]')

%% -------- save --------
set(gcf,'Color','w')
saveas(gcf,"plots/vcwc.png")
close(gcf)



%if constraints
plot_if_constraints(6, 12, 1, [ifd(:,2), ifq(:,2)], [ifd(:,1), ifq(:,1)]);
set(gcf,'Color','w')
saveas(gcf,"plots/constraints_if.png")
close(gcf)



for i = 1:length(t_common)
    vs_alphabeta_MPC(:,i) = abc2alphabeta(vs_abc_MPC(:,i));
end
for i = 1:length(t_common)
    vs_alphabeta_DNN(:,i) = abc2alphabeta(vs_abc_DNN(:,i));
end

%vab constraints
plot_vab_constraints(0.92*(2/3)*xs.model.vdc, 6, 1, vs_alphabeta_MPC', vs_alphabeta_DNN');
set(gcf,'Color','w')
saveas(gcf,"plots/constraints_vs.png")
close(gcf)