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
out_DNN = sim("SIM_DNNs");
vc = out_DNN.vc;
vcd = [vc(:,3), vc(:,1)];
vcq = [vc(:,4), vc(:,2)];
plot(vcd)
legend('$v_{cd}^r$', '$v_{cd}$', 'Interpreter','latex')
saveas(gcf, "plots/vcd.png")
close(gcf);
plot(vcq)
legend('$v_{cq}^r$', '$v_{cq}$', 'Interpreter','latex')
saveas(gcf, "plots/vcq.png")
close(gcf);

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