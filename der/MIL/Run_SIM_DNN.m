%% Save signals from simulation

out_DNN = sim("SIM_DNNs.slx");

%t = out_DNN.if_abc.time;

vc_abc_dnn = out_DNN.vc_abc.signals.values;
if_abc_dnn = out_DNN.if_abc.signals.values;
vs_abc_dnn = out_DNN.vs_abc.signals.values;
ig_abc_dnn = out_DNN.ig_abc.signals.values;
vg_abc_dnn = out_DNN.vg_abc.signals.values;

vc_dq_dnn = out_DNN.vc_dq.signals.values;
vc_dq1_dnn = out_DNN.vc_dq1.signals.values;
vc_dq2_dnn = out_DNN.vc_dq2.signals.values;
if_dq_dnn = out_DNN.if_dq.signals.values;
vs_dq_dnn = out_DNN.vs_dq.signals.values;
ig_dq_dnn = out_DNN.ig_dq.signals.values;
vg_dq_dnn = out_DNN.vg_dq.signals.values;
theta_c_dnn = out_DNN.theta_c.signals.values;

ig_dqr_dnn = out_DNN.ig_dqr.signals.values;
vs_dqr_dnn = squeeze(out_DNN.vs_dqr.signals.values);
vs_ws_dnn = out_DNN.vs_ws.signals.values;
vs_ws1_dnn = out_DNN.vs_ws1.signals.values;
vs_ws2_dnn = out_DNN.vs_ws2.signals.values;
vg_wg_dnn = out_DNN.vg_wg.signals.values;

x_h_dnn = out_DNN.x_h.signals.values;
X_h_dnn = out_DNN.X_h.signals.values;

% DNN2 Signals

xk2_dnn = [ig_dq_dnn, x_h_dnn(:,3)];
dk2_dnn = vg_wg_dnn;
rk2_dnn = ig_dqr_dnn;
uk2_dnn = vs_ws_dnn;
uk2_1_dnn = vs_ws1_dnn;
uk2_2_dnn = vs_ws2_dnn;

% DNN1 Signals

xk1_dnn = [if_dq_dnn, vs_dq_dnn];
dk1_dnn = ig_dq_dnn;
rk1_dnn = vs_dqr_dnn(:,1); % the second column is always zero (redundant)
uk1_dnn = vc_dq_dnn;
uk1_1_dnn = vc_dq1_dnn;
uk1_2_dnn = vc_dq2_dnn;

% Total execution time

texe_dnn = out_DNN.xtime_dnn.signals.values;