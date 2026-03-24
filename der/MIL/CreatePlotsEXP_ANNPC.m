%% Plot Experimental Results
cc;
InitMain;
load('data_fexp09_connect_3a.mat');
t0 = 1.8;
[vsdq_ss,ifdq_ss,vcdq_ss,errorvc_ss,thdv,Vc_ss,fc_ss,igdq_ss,errorig_ss,thdi,harmonics_y] = SS_Metrics(t0,xb,xs);
T = length(xb.t);
to = 1.05;
t_width = 0.51; % 0.12 %0.28

ti = to - t_width/2;
tf = to + t_width/2;
ki = int16(ti/xs.model.Ts);
kf = int16(tf/xs.model.Ts);

% Obtain alpha beta voltage


xb.vs_abc = [xb.vsa ; xb.vsb ; xb.vsc];

for i = 1:length(xb.vsa)
    xb.vs_alphabeta(:,i) = abc2alphabeta(xb.vs_abc(:,i));
end

xb.vsalpha = xb.vs_alphabeta(1,:);
xb.vsbeta = xb.vs_alphabeta(2,:);

% Crop signals for constraint plot

ifd_crop = xb.ifd;
xb.ifd_crop = ifd_crop(ki:kf);
ifq_crop = xb.ifq;
xb.ifq_crop = ifq_crop(ki:kf);

vsalpha_crop = xb.vsalpha;
xb.vsalpha_crop = vsalpha_crop(ki:kf);
vsbeta_crop = xb.vsbeta;
xb.vsbeta_crop = vsbeta_crop(ki:kf);

% Colors
    
colors = lines(7);
colorB = colors(1,:);
colorO = colors(2,:);
colorY = colors(3,:);
colorP = colors(4,:);
colorG = colors(5,:);
colorC = colors(6,:);
colorR = colors(7,:);
    
% General options

txtopt_con = {'FontName', 'Times New Roman', 'FontWeight', 'normal', 'Interpreter', 'latex', 'FontSize', 15};
txtopt = {'FontName', 'Times New Roman', 'FontWeight', 'normal', 'Interpreter', 'latex', 'FontSize', 18};
lineW = 1.8;
lineWC = 1.8;
fig_dim = [200, 350, 500, 280];
fig_dim2 = [200, 350, 500, 150];
fig_dim3 = [200, 200, 800, 400];

h_space_mul = 1.25;
v_space_mul = h_space_mul;
h_margin = 0.066;
v_margin = 0.04;

legend_size = 17;



%% Figures dq Signals ZLC



fig2_dim = [200, 100, 500, 450];
h_space2_mul = 1.13;
v_space2_mul = 1.25;
h_margin2 = 0.1;
v_margin2 = 0.04;
voffset2 = 0.01;
lineW2 = 2;
lineWC2 = 2;

box_lineW = 1;

figure;
set(gcf, 'Position', fig2_dim);

% First subplot
subplot(3,1,1);
hold on;
plot(xb.t, xb.ifd/xs.model.max.if, 'Color', colorB, 'LineWidth', lineW2);
plot(xb.t, xb.ifq/xs.model.max.if, 'Color', colorO, 'LineWidth', lineW2);
yline(xs.model.max.if/xs.model.max.if, 'Color', 0*[0.5 0.5 0.5], 'LineWidth', lineWC2, 'LineStyle', '-');
yline(xs.model.min.if/xs.model.max.if, 'Color', 0*[0.5 0.5 0.5], 'LineWidth', lineWC2, 'LineStyle', '-');
xlim([ti tf]);
ylim([-1.25 1.25]);
ylabel('$\mathbf{i}_{fdq}$', txtopt{:});

legend_handle = legend({'$i_{fd}$', '$i_{fq}$'}, txtopt{:}, 'FontSize', legend_size, 'Orientation', 'horizontal', 'Location', 'northwest');
legend_handle.ItemTokenSize = [7, 7, 7];  % Increase item size for better visibility
grid on;

ax = gca;
ax_pos = ax.Position;
ax_pos = [h_margin2 ax_pos(2) - voffset2 / 2, h_space2_mul * ax_pos(3), v_space2_mul * ax_pos(4)];
ax.Position = ax_pos;
ax.XTickLabel = [];
set(ax, 'Box', 'on', 'LineWidth', box_lineW, 'XColor', 'k', 'YColor', 'k');
hold off;

% Second subplot
subplot(3,1,2);
hold on;
plot(xb.t, xb.vcd / xs.model.max.vc, 'Color', colorB, 'LineWidth', lineW2);
plot(xb.t, xb.vcq / xs.model.max.vc, 'Color', colorO, 'LineWidth', lineW2);
plot(xb.t,xb.Vc/xs.model.max.vc,'Color',colorC,'LineWidth',lineW2, 'LineStyle', '--');
yline(0, 'Color', colorY, 'LineWidth', lineW2, 'LineStyle', '--');
xlim([ti tf]);
ylim([-1.15 1.15]);
ylabel('$\mathbf{v}_{cdq}$', txtopt{:});

legend_handle = legend({'$v_{cd}$', '$v_{cq}$', '$v_{cd}^r$', '$v_{cq}^r$'}, txtopt{:}, 'FontSize', legend_size, 'Orientation', 'horizontal', 'Location', 'northwest');
legend_handle.ItemTokenSize = [7, 7, 7];
grid on;

ax = gca;
ax_pos = ax.Position;
ax_pos = [h_margin2, ax_pos(2) + voffset2 / 2, h_space2_mul * ax_pos(3), v_space2_mul * ax_pos(4)];
ax.Position = ax_pos;
ax.XTickLabel = [];
set(ax, 'Box', 'on', 'LineWidth', box_lineW, 'XColor', 'k', 'YColor', 'k');
hold off;


% Third subplot
subplot(3,1,3);
hold on;
plot(xb.t, xb.vsd / xs.model.max.vc, 'Color', colorB, 'LineWidth', lineW2);
plot(xb.t, xb.vsq / xs.model.max.vc, 'Color', colorO, 'LineWidth', lineW2);
yline(1, 'Color', 0*[0.5 0.5 0.5], 'LineWidth', lineWC2, 'LineStyle', '--');
yline(-1, 'Color', 0*[0.5 0.5 0.5], 'LineWidth', lineWC2, 'LineStyle', '--');
xlim([ti tf]);
ylim([-1.15 1.15]);
xlabel('Time [s]', txtopt{:});
ylabel('$\mathbf{v}_{sdq}$', txtopt{:});

legend_handle = legend({'$v_{sd}$', '$v_{sq}$'}, txtopt{:}, 'FontSize', legend_size, 'Orientation', 'horizontal', 'Location', 'northwest');
legend_handle.ItemTokenSize = [7, 7, 7];
grid on;

ax = gca;
ax_pos = ax.Position;
ax_pos = [h_margin2, ax_pos(2) + voffset2*1.5, h_space2_mul * ax_pos(3), v_space2_mul * ax_pos(4)];
ax.Position = ax_pos;
set(ax, 'Box', 'on', 'LineWidth', box_lineW, 'XColor', 'k', 'YColor', 'k');
hold off;

%% Figures dq Signals PC (3x1)

fig2_dim = [200, 100, 500, 450];
h_space2_mul = 1.12;
v_space2_mul = 1.3;
h_margin2 = 0.11;
v_margin2 = 0.04;
voffset2 = 0.01;
lineW2 = 2;
lineWC2 = 2;

box_lineW = 1;


figure;
set(gcf, 'Position', fig2_dim);


% First subplot
subplot(3,1,1);
hold on;
plot(xb.t,xb.igd/xs.model.max.if,'Color',colorB,'LineWidth',lineW);
plot(xb.t,xb.igq/xs.model.max.if,'Color',colorO,'LineWidth',lineW);
plot(xb.t,xb.igdr_normal/xs.model.max.if,'Color',colorC,'LineWidth',lineW,'LineStyle','--');
plot(xb.t,xb.igqr_normal/xs.model.max.if,'Color',colorY,'LineWidth',lineW,'LineStyle','--');
xlim([ti tf]);
ylim([-1.15 1.3]);
ylabel('$\mathbf{i}_{gdq}$', txtopt{:});

legend_handle = legend({'$i_{gd}$', '$i_{gq}$', '$i_{gd}^r$', '$i_{gq}^r$'}, txtopt{:}, 'FontSize', legend_size, 'Orientation', 'horizontal', 'Location', 'northwest');
legend_handle.ItemTokenSize = [7, 7, 7];  % Increase item size for better visibility
grid on;

ax = gca;
ax_pos = ax.Position;
ax_pos = [h_margin2 ax_pos(2), h_space2_mul * ax_pos(3), v_space2_mul * ax_pos(4)];
ax.Position = ax_pos;
ax.XTickLabel = [];
set(ax, 'Box', 'on', 'LineWidth', box_lineW, 'XColor', 'k', 'YColor', 'k');
hold off;

% Third subplot
subplot(3,1,2);
hold on;
plot(xb.t,xb.Vc/xs.model.max.vc,'Color',colorB,'LineWidth',lineW);
yline(xs.model.max.Vs/xs.model.max.vc, 'Color', 0*[0.5 0.5 0.5],'LineWidth',lineWC, 'LineStyle','--');
%yline(xs.model.min.Vs, 'Color', [0 0 0],'LineWidth',lineWC); 
xlim([ti tf]);
ylim([0.75 0.95]);
ylabel('$V_c$',txtopt{:});
grid on;
ax = gca;
ax_pos = ax.Position;
ax_pos = [h_margin2 ax_pos(2) h_space2_mul*ax_pos(3) v_space2_mul*ax_pos(4)];
ax.Position = ax_pos;
ax.XTickLabel = [];
set(ax, 'Box', 'on', 'LineWidth', box_lineW, 'XColor', 'k', 'YColor', 'k');
hold off;

% Fourth subplot
subplot(3,1,3);
hold on;
plot(xb.t,xb.wc,'Color',colorB,'LineWidth',lineW);
yline(xs.model.max.ws/(2*pi), 'Color', 0*[0.5 0.5 0.5],'LineWidth',lineWC, 'LineStyle','-');
yline(xs.model.min.ws/(2*pi), 'Color', 0*[0.5 0.5 0.5],'LineWidth',lineWC, 'LineStyle','-'); 
xlabel('Time [s]',txtopt{:});
xlim([ti tf]);
ylim([48.6 51.4]);
ylabel('$f_c$ [Hz]',txtopt{:});
grid on;
ax = gca;
ax_pos = ax.Position;
ax_pos = [h_margin2 ax_pos(2) h_space2_mul*ax_pos(3) v_space2_mul*ax_pos(4)];
ax.Position = ax_pos;
set(ax, 'Box', 'on', 'LineWidth', box_lineW, 'XColor', 'k', 'YColor', 'k');
hold off;



%% Figures dq Signals PC (4x1)

fig1_dim = [200, 100, 500, 450];
h_space_mul = 1.135;
v_space_mul = 1.30;
h_margin = 0.10;
lineW = 2;
lineWC = 2;



figure;
set(gcf, 'Position', fig1_dim);

% First subplot
subplot(4,1,1);
hold on;
plot(xb.t, xb.ifd/xs.model.max.if, 'Color', colorB, 'LineWidth', lineW2);
plot(xb.t, xb.ifq/xs.model.max.if, 'Color', colorO, 'LineWidth', lineW2);
%plot(t, ifdq_mag/xs.model.max.if, 'Color', colorP, 'LineWidth', lineW2);
yline(xs.model.max.if/xs.model.max.if, 'Color', 0*[0.5 0.5 0.5], 'LineWidth', lineWC2, 'LineStyle', '-');
yline(xs.model.min.if/xs.model.max.if, 'Color', 0*[0.5 0.5 0.5], 'LineWidth', lineWC2, 'LineStyle', '-');
xlim([ti tf]);
ylim([-0.5 1.25]);
ylabel('$\mathbf{i}_{fdq}$', txtopt{:});

legend_handle = legend({'$i_{fd}$', '$i_{fq}$'}, txtopt{:}, 'FontSize', legend_size, 'Orientation', 'horizontal', 'Location', 'northwest');
legend_handle.ItemTokenSize = [7, 7, 7];  % Increase item size for better visibility
grid on;

ax = gca;
ax_pos = ax.Position;
ax_pos = [h_margin ax_pos(2), h_space_mul * ax_pos(3), v_space_mul * ax_pos(4)];
ax.Position = ax_pos;
ax.XTickLabel = [];
set(ax, 'Box', 'on', 'LineWidth', box_lineW, 'XColor', 'k', 'YColor', 'k');
hold off;

% Second subplot
subplot(4,1,2);
hold on;
plot(xb.t,xb.igd/xs.model.max.if,'Color',colorB,'LineWidth',lineW);
plot(xb.t,xb.igq/xs.model.max.if,'Color',colorO,'LineWidth',lineW);
plot(xb.t,xb.igdr_normal/xs.model.max.if,'Color',colorC,'LineWidth',lineW,'LineStyle','--');
plot(xb.t,xb.igqr_normal/xs.model.max.if,'Color',colorY,'LineWidth',lineW,'LineStyle','--');
xlim([ti tf]);
ylim([-0.5 1.25]);
ylabel('$\mathbf{i}_{gdq}$', txtopt{:});

legend_handle = legend({'$i_{gd}$', '$i_{gq}$', '$i_{gd}^r$', '$i_{gq}^r$'}, txtopt{:}, 'FontSize', legend_size, 'Orientation', 'horizontal', 'Location', 'northwest');
legend_handle.ItemTokenSize = [7, 7, 7];  % Increase item size for better visibility
grid on;

ax = gca;
ax_pos = ax.Position;
ax_pos = [h_margin ax_pos(2), h_space_mul * ax_pos(3), v_space_mul * ax_pos(4)];
ax.Position = ax_pos;
ax.XTickLabel = [];
set(ax, 'Box', 'on', 'LineWidth', box_lineW, 'XColor', 'k', 'YColor', 'k');
hold off;

% Third subplot
subplot(4,1,3);
hold on;
plot(xb.t,xb.Vc/xs.model.max.vc,'Color',colorB,'LineWidth',lineW);
yline(xs.model.max.Vs/xs.model.max.vc, 'Color', 0*[0.5 0.5 0.5],'LineWidth',lineWC, 'LineStyle','--');
%yline(xs.model.min.Vs, 'Color', [0 0 0],'LineWidth',lineWC); 
xlim([ti tf]);
ylim([0.76 0.96]);
ylabel('$V_c$',txtopt{:});
grid on;
ax = gca;
ax_pos = ax.Position;
ax_pos = [h_margin ax_pos(2) h_space_mul*ax_pos(3) v_space_mul*ax_pos(4)];
ax.Position = ax_pos;
ax.XTickLabel = [];
set(ax, 'Box', 'on', 'LineWidth', box_lineW, 'XColor', 'k', 'YColor', 'k');
hold off;

% Fourth subplot
subplot(4,1,4);
hold on;
plot(xb.t,xb.wc,'Color',colorB,'LineWidth',lineW);
yline(xs.model.max.ws/(2*pi), 'Color', 0*[0.5 0.5 0.5],'LineWidth',lineWC, 'LineStyle','-');
yline(xs.model.min.ws/(2*pi), 'Color', 0*[0.5 0.5 0.5],'LineWidth',lineWC, 'LineStyle','-'); 
xlabel('Time [s]',txtopt{:});
xlim([ti tf]);
ylim([48.5 51.5]);
ylabel('$f_c$ [Hz]',txtopt{:});
grid on;
ax = gca;
ax_pos = ax.Position;
ax_pos = [h_margin ax_pos(2) h_space_mul*ax_pos(3) v_space_mul*ax_pos(4)];
ax.Position = ax_pos;
set(ax, 'Box', 'on', 'LineWidth', box_lineW, 'XColor', 'k', 'YColor', 'k');
hold off;





%% abc signals



figure;
set(gcf, 'Position', fig1_dim);

subplot(4,1,1);
hold on;
plot(xb.t,xb.vsa/xs.model.max.vc,'Color',colorB,'LineWidth',lineW);
plot(xb.t,xb.vsb/xs.model.max.vc,'Color',colorO,'LineWidth',lineW);
plot(xb.t,xb.vsc/xs.model.max.vc,'Color',colorY,'LineWidth',lineW);
yline(xs.model.max.vc/xs.model.max.vc, 'Color', 0*ones(1,3),'LineWidth',lineWC, 'LineStyle','--'); 
yline(-xs.model.max.vc/xs.model.max.vc, 'Color', 0*ones(1,3),'LineWidth',lineWC, 'LineStyle','--'); 
%yline(xs.model.max.vc_alfabeta/xs.model.max.vc, 'Color', [0 0 0],'LineWidth',lineWC, 'LineStyle','--'); 
%yline(-xs.model.max.vc_alfabeta/xs.model.max.vc, 'Color', [0 0 0],'LineWidth',lineWC, 'LineStyle','--'); 
xlim([ti tf]);
ylim([-1.25 1.25]);
ylabel('$\mathbf{v}_{sabc}$',txtopt{:});
% legend_handle = legend({'MPC','ANN'},txtopt{:},'FontSize',10, 'Orientation', 'horizontal');
% legend_handle.ItemTokenSize = [4, 4, 4];
grid on;
ax = gca;
ax_pos = ax.Position;
ax_pos = [h_margin ax_pos(2) h_space_mul*ax_pos(3) v_space_mul*ax_pos(4)];
ax.Position = ax_pos;
ax.XTickLabel = [];
set(ax, 'Box', 'on', 'LineWidth', box_lineW, 'XColor', 'k', 'YColor', 'k');
hold off;

subplot(4,1,2);
hold on;
plot(xb.t,xb.ifa/xs.model.max.if,'Color',colorB,'LineWidth',lineW);
plot(xb.t,xb.ifb/xs.model.max.if,'Color',colorO,'LineWidth',lineW);
plot(xb.t,xb.ifc/xs.model.max.if,'Color',colorY,'LineWidth',lineW);
yline(xs.model.min.if/xs.model.max.if, 'Color', 0*[0.5 0.5 0.5],'LineWidth',lineWC, 'LineStyle','-');
yline(-xs.model.min.if/xs.model.max.if, 'Color', 0*[0.5 0.5 0.5],'LineWidth',lineWC, 'LineStyle','-');
xlim([ti tf]);
ylim([-1.25 1.25]);
ylabel('$\mathbf{i}_{fabc}$',txtopt{:});
%legend_handle = legend({'MPC','ANN'},txtopt{:},'FontSize',10);
%legend_handle.ItemTokenSize = [4, 4, 4];
grid on;
ax = gca;
ax_pos = ax.Position;
ax_pos = [h_margin ax_pos(2) h_space_mul*ax_pos(3) v_space_mul*ax_pos(4)];
ax.Position = ax_pos;
ax.XTickLabel = [];
set(ax, 'Box', 'on', 'LineWidth', box_lineW, 'XColor', 'k', 'YColor', 'k');
hold off;


subplot(4,1,3);
hold on;
plot(xb.t,xb.vca/xs.model.max.vc,'Color',colorB,'LineWidth',lineW);
plot(xb.t,xb.vcb/xs.model.max.vc,'Color',colorO,'LineWidth',lineW);
plot(xb.t,xb.vcc/xs.model.max.vc,'Color',colorY,'LineWidth',lineW);
%yline(xs.model.min.Vs, 'Color', [0 0 0],'LineWidth',lineWC); 
xlim([ti tf]);
ylim([-1.25 1.25]);
ylabel('$\mathbf{v}_{cabc}$',txtopt{:});
%legend_handle = legend({'MPC','ANN'},txtopt{:},'FontSize',10, 'Orientation', 'horizontal');
%legend_handle.ItemTokenSize = [4, 4, 4];
grid on;
ax = gca;
ax_pos = ax.Position;
ax_pos = [h_margin ax_pos(2) h_space_mul*ax_pos(3) v_space_mul*ax_pos(4)];
ax.Position = ax_pos;
ax.XTickLabel = [];
set(ax, 'Box', 'on', 'LineWidth', box_lineW, 'XColor', 'k', 'YColor', 'k');
hold off;


subplot(4,1,4);
hold on;
plot(xb.t,xb.iga/xs.model.max.if,'Color',colorB,'LineWidth',lineW);
plot(xb.t,xb.igb/xs.model.max.if,'Color',colorO,'LineWidth',lineW);
plot(xb.t,xb.igc/xs.model.max.if,'Color',colorY,'LineWidth',lineW);
xlabel('Time [s]',txtopt{:});
xlim([ti tf]);
ylim([-1.25 1.25]);
ylabel('$\mathbf{i}_{gabc}$',txtopt{:});
%legend_handle = legend({'MPC','ANN'},txtopt{:},'FontSize',10);
%legend_handle.ItemTokenSize = [4, 4, 4];
grid on;
ax = gca;
ax_pos = ax.Position;
ax_pos = [h_margin ax_pos(2) h_space_mul*ax_pos(3) v_space_mul*ax_pos(4)];
ax.Position = ax_pos;
set(ax, 'Box', 'on', 'LineWidth', box_lineW, 'XColor', 'k', 'YColor', 'k');
hold off;


%% vg_abc vs vc_abc

fig1_dim = [200, 100, 750, 500];
h_space_mul = 1.18;
v_space_mul = 1.3;
h_margin = 0.07;
lineW = 2;
lineWC = 2;


figure;
set(gcf, 'Position', fig1_dim);

subplot(4,1,1);
hold on;
plot(xb.t,xb.vsa/xs.model.max.vc,'Color',colorB,'LineWidth',lineW);
plot(xb.t,xb.vsb/xs.model.max.vc,'Color',colorO,'LineWidth',lineW);
plot(xb.t,xb.vsc/xs.model.max.vc,'Color',colorY,'LineWidth',lineW);
yline(xs.model.max.vc/xs.model.max.vc, 'Color', 0*ones(1,3),'LineWidth',lineWC, 'LineStyle','--'); 
yline(-xs.model.max.vc/xs.model.max.vc, 'Color', 0*ones(1,3),'LineWidth',lineWC, 'LineStyle','--'); 
%yline(xs.model.max.vc_alfabeta/xs.model.max.vc, 'Color', [0 0 0],'LineWidth',lineWC, 'LineStyle','--'); 
%yline(-xs.model.max.vc_alfabeta/xs.model.max.vc, 'Color', [0 0 0],'LineWidth',lineWC, 'LineStyle','--'); 
xlim([ti tf]);
ylim([-1.25 1.25]);
ylabel('$\mathbf{v}_{sabc}$',txtopt{:});
% legend_handle = legend({'MPC','ANN'},txtopt{:},'FontSize',10, 'Orientation', 'horizontal');
% legend_handle.ItemTokenSize = [4, 4, 4];
grid on;
ax = gca;
ax_pos = ax.Position;
ax_pos = [h_margin ax_pos(2) h_space_mul*ax_pos(3) v_space_mul*ax_pos(4)];
ax.Position = ax_pos;
ax.XTickLabel = [];
set(ax, 'Box', 'on', 'LineWidth', box_lineW, 'XColor', 'k', 'YColor', 'k');
hold off;

subplot(4,1,2);
hold on;
plot(xb.t,xb.ifa/xs.model.max.if,'Color',colorB,'LineWidth',lineW);
plot(xb.t,xb.ifb/xs.model.max.if,'Color',colorO,'LineWidth',lineW);
plot(xb.t,xb.ifc/xs.model.max.if,'Color',colorY,'LineWidth',lineW);
yline(xs.model.min.if/xs.model.max.if, 'Color', 0*[0.5 0.5 0.5],'LineWidth',lineWC, 'LineStyle','-');
yline(-xs.model.min.if/xs.model.max.if, 'Color', 0*[0.5 0.5 0.5],'LineWidth',lineWC, 'LineStyle','-');
xlim([ti tf]);
ylim([-1.25 1.25]);
ylabel('$\mathbf{i}_{fabc}$',txtopt{:});
%legend_handle = legend({'MPC','ANN'},txtopt{:},'FontSize',10);
%legend_handle.ItemTokenSize = [4, 4, 4];
grid on;
ax = gca;
ax_pos = ax.Position;
ax_pos = [h_margin ax_pos(2) h_space_mul*ax_pos(3) v_space_mul*ax_pos(4)];
ax.Position = ax_pos;
ax.XTickLabel = [];
set(ax, 'Box', 'on', 'LineWidth', box_lineW, 'XColor', 'k', 'YColor', 'k');
hold off;


subplot(4,1,3);
hold on;
plot(xb.t,xb.vca/xs.model.max.vc,'Color',colorB,'LineWidth',lineW);
plot(xb.t,xb.vcb/xs.model.max.vc,'Color',colorO,'LineWidth',lineW);
plot(xb.t,xb.vcc/xs.model.max.vc,'Color',colorY,'LineWidth',lineW);
plot(xb.t,xb.vga/xs.model.max.vc,'Color',min(0.7*colorB,1),'LineWidth',lineW, 'LineStyle','-.');
plot(xb.t,xb.vgb/xs.model.max.vc,'Color',min(0.7*colorO,1),'LineWidth',lineW, 'LineStyle','-.');
plot(xb.t,xb.vgc/xs.model.max.vc,'Color',min(0.7*colorY,1),'LineWidth',lineW, 'LineStyle','-.');
xlim([ti tf]);
ylim([-1.25 2]);
ylabel('$\mathbf{v}_{cabc}, \, \mathbf{v}_{gabc}$', txtopt{:});
legend_handle = legend({'$v_{ca}$', '$v_{cb}$', '$v_{cc}$','$v_{ga}$', '$v_{gb}$', '$v_{gc}$'}, txtopt{:}, 'FontSize', legend_size, 'Orientation', 'horizontal', 'Location', 'northwest');
legend_handle.ItemTokenSize = [7, 7, 7];  % Increase item size for better visibility

grid on;
ax = gca;
ax_pos = ax.Position;
ax_pos = [h_margin ax_pos(2) h_space_mul*ax_pos(3) v_space_mul*ax_pos(4)];
ax.Position = ax_pos;
ax.XTickLabel = [];
set(ax, 'Box', 'on', 'LineWidth', box_lineW, 'XColor', 'k', 'YColor', 'k');
hold off;


subplot(4,1,4);
hold on;
plot(xb.t,xb.iga/xs.model.max.if,'Color',colorB,'LineWidth',lineW);
plot(xb.t,xb.igb/xs.model.max.if,'Color',colorO,'LineWidth',lineW);
plot(xb.t,xb.igc/xs.model.max.if,'Color',colorY,'LineWidth',lineW);
xlabel('Time [s]',txtopt{:});
xlim([ti tf]);
ylim([-1.25 1.25]);
ylabel('$\mathbf{i}_{gabc}$',txtopt{:});
%legend_handle = legend({'MPC','ANN'},txtopt{:},'FontSize',10);
%legend_handle.ItemTokenSize = [4, 4, 4];
grid on;
ax = gca;
ax_pos = ax.Position;
ax_pos = [h_margin ax_pos(2) h_space_mul*ax_pos(3) v_space_mul*ax_pos(4)];
ax.Position = ax_pos;
set(ax, 'Box', 'on', 'LineWidth', box_lineW, 'XColor', 'k', 'YColor', 'k');
hold off;


%% Plots constraints

fig_dim3 = [200, 200, 800, 400];

% Plot the original circle for reference
R = 1;
theta = linspace(0, 2*pi, 100);
circle_x = R * cos(theta);
circle_y = R * sin(theta);
      

figure;
set(gcf, 'Position', fig_dim3);

% Left subplot: dq constraints
subplot(1, 2, 1);
hold on;
[vx_d, vx_q] = circle2polyPLOT(xs.model.max.if/xs.model.max.if, xs.MPC1.Lif, true, false);

% Señales omitidas en leyenda
plot(xb.ifd_crop/xs.model.max.if, xb.ifq_crop/xs.model.max.if, ...
     'Color', colorB, 'LineWidth', lineW, 'HandleVisibility', 'off');

% Señal que sí aparece en la leyenda
h1 = plot(xb.ifd_crop(end)/xs.model.max.if, xb.ifq_crop(end)/xs.model.max.if, '.', ...
     'Color', colorB, 'DisplayName', '$\mathbf{i}_{fdq}$', 'MarkerSize', 12);

xlabel('$i_{fd}$', txtopt{:});
ylabel('$i_{fq}$', txtopt{:});
xlim([-1.2 1.2]); ylim([-1.2 1.2]);
legend_handle = legend(h1, 'Interpreter', 'latex', 'FontSize', legend_size, ...
                       'Orientation', 'horizontal', 'Location', 'northwest');
legend_handle.ItemTokenSize = [4, 4];
grid on;
ax = gca;
ax_pos = ax.Position;
ax_pos = [h_margin+0.01 v_margin h_space_mul*ax_pos(3) v_space_mul*ax_pos(4)];
ax.Position = ax_pos;
set(ax, 'Box', 'on', 'LineWidth', 1, 'XColor', 'k', 'YColor', 'k');
hold off;

% Right subplot: alpha-beta constraints
subplot(1, 2, 2);
hold on;
[vx_alpha, vx_beta] = circle2polyPLOT(xs.model.max.vc_alfabeta/xs.model.max.vc, xs.MPC1.Lvc, false, true);

% Omitir curvas
plot(xb.vsalpha_crop/xs.model.max.vc, xb.vsbeta_crop/xs.model.max.vc, ...
     'Color', colorO, 'LineWidth', lineW, 'HandleVisibility', 'off');
plot(circle_x, circle_y, 'Color', 0*ones(1,3), 'LineWidth', 2, ...
     'LineStyle', '--', 'HandleVisibility', 'off');

% Agregar solo un punto para la leyenda
h2 = plot(xb.vsalpha_crop(end)/xs.model.max.vc, xb.vsbeta_crop(end)/xs.model.max.vc, '.', ...
     'Color', colorO, 'DisplayName', '$\mathbf{v}_{s\alpha\beta}$', 'MarkerSize', 12);

xlabel('$v_{s\alpha}$', txtopt{:});
ylabel('$v_{s\beta}$', txtopt{:});
legend_handle = legend(h2, 'Interpreter', 'latex', 'FontSize', legend_size, ...
                       'Orientation', 'horizontal', 'Location', 'northwest');
legend_handle.ItemTokenSize = [4, 4];
grid on;
ax = gca;
ax_pos = ax.Position;
ax_pos = [h_margin+0.51 v_margin h_space_mul*ax_pos(3) v_space_mul*ax_pos(4)];
ax.Position = ax_pos;
set(ax, 'Box', 'on', 'LineWidth', 1, 'XColor', 'k', 'YColor', 'k');
hold off;



%% Plot execution time

t_exe = xb.texe/(1e-6);

fig_dim_exe = [200, 100, 500*3/2, 180];
fig1_dim = [200, 100, 500*3/4, 380];
h_space_mul = 1.18;
v_space_mul = 0.8;
h_margin = 0.07;
v_margin = 0.25;
lineW = 2;
lineWC = 2;

figure;
set(gcf, 'Position', fig_dim_exe);

subplot(1,1,1);
hold on;
plot(xb.t,t_exe, 'Color', colorB, 'LineWidth', lineW);
xlabel('Time [s]',txtopt{:});
xlim([ti tf]);
ylabel('Ex. Time $[\mu s]$', txtopt{:});
ylim([60 100]);
grid on;

ax = gca;
ax_pos = ax.Position;
ax_pos = [h_margin, v_margin, h_space_mul * ax_pos(3), v_space_mul * ax_pos(4)];
ax.Position = ax_pos;
set(ax, 'Box', 'on', 'LineWidth', box_lineW, 'XColor', 'k', 'YColor', 'k');
hold off;
