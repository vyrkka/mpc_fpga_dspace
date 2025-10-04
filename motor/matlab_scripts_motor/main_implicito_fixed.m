clearvars -except u_act32 vel32 pos32 u_act16 vel16 pos16 

%dbstop if warning fi:overflow
%dbclear if warning fi:overflow
wl = 32; %7 para parte entera
fl = 24;

wl_est = wl;
fl_est = fl;



% W_qt = wl;
% Q_qt = wl-fl;
% F_ = fi_config(W_qt,Q_qt);
% DNN_pars =  init_net_fixedL2(h5_file, W_qt, Q_qt, F_);

% configuración fimath
F_ = fimath('OverflowAction', 'Saturate', ... % Wrap o Saturate
           'RoundingMethod', 'Round', ...%Floor o Round
           'ProductMode', 'SpecifyPrecision', ...
           'ProductWordLength', wl, ...
           'ProductFractionLength', fl, ...
           'SumMode', 'SpecifyPrecision', ...
           'SumWordLength', wl, ...
           'SumFractionLength', fl);
P = fipref;
P.LoggingMode = 'off';
P.NumericTypeDisplay = 'none';
P.FimathDisplay = 'none';

N_HOR = 3;      % Ns: tamaños del horizonte de predicción
ADMM_iters = 20;

% Arreglo de tiempo
h = 1e-3; %Tiempo discretización planta
ncount = 12; 
tsimu = 40;          % tsimu: Tiempo de simulación en segundos
k=0:h:tsimu-h;    % t: Arreglo de tiempo
T = 20; 

%referencia
square_wave = square(2*pi*(1/T)*k); 
ref_fl = (pi/180)*(170*square_wave + 180);
%ref = 0.1*square_wave;
ref = fi(ref_fl,1, wl, fl);
ref.fimath = F_;

a = 28.8582;
K = 45.0051;
%Discreto sistema físico
As=[exp(-a*h) 0; (1-exp(-a*h))/a 1 ];
Bs=[1-exp(-a*h); exp(-a*h)/a-1/a+h ]*K/a;
Cs = [0 1];

%Discreto lazo control
A = [exp(-a*h*ncount) 0; (1-exp(-a*h*ncount))/a 1 ];

B = [1-exp(-a*h*ncount); exp(-a*h*ncount)/a-1/a+h*ncount ]*K/a;
C = [0 1];

% Diseno de Observador
Ax = [A B;0 0 1];
Bx = [B; 0];
Cx = [0 1 0];
Lobs = acker(Ax' ,Cx' ,[0.5 0.5 0.5])';

Ax = fi(Ax,1, wl_est, fl_est);
Ax.fimath = F_;
Bx = fi(Bx,1, wl_est, fl_est);
Bx.fimath = F_;
Cx = fi(Cx,1, wl_est, fl_est);
Cx.fimath = F_;
Lobs = fi(Lobs,1, wl_est, fl_est);
Lobs.fimath = F_;

Gamma=1;
Omega=C'*C*0.8;
[Linf,OmegaN,~]=dlqr(A,B,Omega,Gamma);
[D,E] = fx_dense_matrices(A,B,N_HOR);       % constantes del sistema

A = fi(A,1, wl, fl);
A.fimath = F_;
B = fi(B,1, wl, fl);
B.fimath = F_;
C = fi(C,1, wl, fl);
C.fimath = F_;

x0 = single([0;0.0]);    % x0: velocidad y posicion angular inicial
zhat0 = single([0;0; 0]);

% Datos de las restricciones
% umin, umax en Volts:
umin = single(-10);
umax = single(10);
% xmin, xmax: rad/s, rad
xmin = single([-2;0]);
xmax = single([2;2*pi]);
pert_max = 1;

N_SYS = size(A,1);      % numero de estados
M_SYS = size(B,2);      % numero de actuaciones
P_SYS = size(C,1);      % numero de salidas

N_QP = N_HOR * M_SYS;
M_QP = 2 * N_HOR * (N_SYS + M_SYS);
xk = zeros(N_SYS, length(k), 'single');
zhat = zeros(N_SYS+1, length(k), 'single');
yhat = zeros(P_SYS, length(k), 'single');
uk = zeros(M_SYS, length(k), 'single');

u_act = zeros(M_SYS, length(k), 'single');

xk(:,1) = x0;
zhat(:,1) = zhat0;
yhat(:,2) = C*(A*zhat(1:end-1,1));
%theta = zeros(N_QP, length(k), 'single');


K = blkdiag(kron(eye(N_HOR-1),Omega),OmegaN);
L = kron(eye(N_HOR),Gamma);
Q = 2*(L+E'*K*E);                           % constante del sistema
Q = (Q+Q')/2;
D = single(D);
F = [E;-E];
G = single(2*D'*K*E);                       % constante del sistema
a = single(kron(ones(N_HOR,1),umin));       % constante del sistema
b = single(kron(ones(N_HOR,1),umax));       % constante del sistema
d = single(kron(ones(N_HOR,1),xmin));       % constante del sistema
e = single(kron(ones(N_HOR,1),xmax));       % constante del sistema
H = [F;eye(N_QP);-eye(N_QP)];               % constante del sistema

rho = single(fx_dhang_rho(Q,H));

%%%%%%%%%%%%%%%%%%%fi
a = fi(a,1, wl, fl);
a.fimath = F_;
b = fi(b,1, wl, fl);
b.fimath = F_;
d = fi(d,1, wl, fl);
d.fimath = F_;
e = fi(e,1, wl, fl);
e.fimath = F_;
D = fi(D,1, wl, fl);
D.fimath = F_;
E = fi(E,1, wl, fl);
E.fimath = F_;
G = fi(G,1, wl, fl);
G.fimath = F_;

Q = single(Q);
H = single(H);

R = Q + rho*(H'*H);
R_inv = R \ eye(size(R,1));

%%%%%%%%%%%%%%%%%%%fi
H = fi(H,1, wl, fl);
H.fimath = F_;
R_inv = fi(R_inv,1, wl, fl);
R_inv.fimath = F_;
rho = fi(rho,1, wl, fl);
rho.fimath = F_;
t_ADMM = zeros(N_QP, 1, 'single');
t_ADMM = fi(t_ADMM,1, wl, fl);
t_ADMM.fimath = F_;
z_ADMM = zeros(M_QP, 1, 'single');
z_ADMM = fi(z_ADMM,1, wl, fl);
z_ADMM.fimath = F_;
u_ADMM = zeros(M_QP, 1, 'single');
u_ADMM = fi(u_ADMM,1, wl, fl);
u_ADMM.fimath = F_;

count = ncount-1;
x_fixed = fi(0,1, wl, fl);
u_fixed = fi(0,1, wl, fl);
x_fixed.fimath = F_;
u_fixed.fimath = F_;

yhat = fi(yhat,1, wl, fl);
yhat.fimath = F_;

zhat_fixed = fi(zhat(:,1),1,wl,fl);
zhat_fixed.fimath = F_;

for i=2:length(k)/1000

    %ACTUACIÓN
    u_pert = u_fixed;
    if(abs(u_fixed) < 0.3)
        u_pert = 0;
    end
    u_pert = single(u_pert);
    %SISTEMA
    xk(:,i) = As*xk(:,i-1)+Bs*u_pert; % Cálculo del siguiente estado


    if(count == ncount-1) %Se actualiza actuación
                %ESTIMACIÓN
        %yhat_fixed = fi(yhat(:,i),1,wl,fl);
        %yhat_fixed.fimath = F_;
        %C*zhat_fixed(1:end-1)
        %yhat_fixed
        %zhat(2,i-1) = temp;
%         u_fixed = fi(uk(:,i-1),1, wl, fl);
%         u_fixed.fimath = F_;
        
        zhat_fixed = fi(zhat(:,i-1),1, wl_est, fl_est);
        zhat_fixed.fimath = F_;
        x_fixed = fi(xk(:,i-1),1, wl_est, fl_est);
        x_fixed.fimath = F_;
%         temp1 = C*x_fixed- yhat(:,i-1);
%         temp2 = Lobs*temp1;
%         temp3 = Bx*u_fixed;
%         temp4 = Ax*zhat_fixed;
%         temp5 = temp2 + temp3;
%         zhat(:,i) = temp4 + temp5;
        zhat(:,i) = Ax*zhat_fixed + Bx*u_fixed + Lobs*(C*x_fixed- yhat(:,i-1));
        if(zhat(3,i) > pert_max)
            zhat(3,i) = pert_max;
        end
        if(zhat(3,i) < -pert_max)
            zhat(3,i) = -pert_max;
        end
        zhat_fixed = fi(zhat(:,i),1, wl_est, fl_est);
        
        %zhat_fixed(2) = x_fixed(2);
        zhat_fixed.fimath = F_;

        %x_fixed = fi(xk(:,i),1, wl, fl);
        q = ((zhat_fixed(1:end-1)-[0;ref(i)])'*G)';
        f = [e-D*zhat_fixed(1:end-1); D*zhat_fixed(1:end-1)-d];
        h2 = [f; b; -a];


        [t_ADMM, z_ADMM, u_ADMM] = fx_qp_admm_fixed(R_inv, q, H, h2, t_ADMM, z_ADMM, u_ADMM, rho, ADMM_iters);
            %CONTROL
        %h2 = fi(h2,1, wl, fl);
        %h2.fimath = F_;
        uk(:,i) = t_ADMM(1:M_SYS);
        % delta_max = 1;
        % delta = uk(:, i) - uk(:, i-1);
        % delta_clipped = max(min(delta, delta_max), -delta_max);
        % uk(:, i) = uk(:, i-1) + delta_clipped;

        u_fixed =  fi(uk(:,i),1, wl, fl);
        u_fixed.fimath = F_;
        u_fixed = u_fixed - zhat_fixed(3);
        u_act(:,i) = u_fixed;
        %if(abs(u_act(:,i)) <0.3)
            %u_act(:,i) = 0;
        %end
        zhat_fixed = fi(zhat(:,i),1, wl_est, fl_est);
        zhat_fixed.fimath = F_;
        if(i ~= length(k))
            %yhat(:,i+1) = C*(A*zhat_fixed(1:end-1) + B*u_fixed);
            yhat(:,i) = C*zhat_fixed(1:end-1);
            %%%yhat(:,i+1) = C*(A*xk(:,i) + B*uk(:,i));
        end
        count = 0;
    else
        uk(:,i) = uk(:,i-1);
        u_act(:,i) = u_act(:,i-1);
        count = count+1;
        zhat(:,i) = zhat(:,i-1);
        yhat(:,i) = yhat(:,i-1);
    end
%     u_fixed = fi(uk(:,i),1, wl, fl);
%     u_fixed.fimath = F_;
%     u_fixed = u_fixed - zhat_fixed(3);
%     uk(:,i) = single(u_fixed);
    %PREDICCIÓN
    %zhat(2,i) = temp;
end




%vel32 = xk32_1;
%pos32 = xk32_2;

% u_act32 = u_act(1,:);
% vel32 = xk(1,:);
% pos32 = xk(2,:);

linew = 2.5;

figure; hold on; grid on;

stairs(k, pos32, 'LineStyle', '-', 'Color', [1 0 0], 'DisplayName', 'pos (W=32)', LineWidth=linew); % green
stairs(k, pos16, 'LineStyle', '-', 'Color', [0 0.6 0], 'DisplayName', 'pos (W=16)', LineWidth=linew); % red

stairs(k, u_act32, 'LineStyle', '-', 'Color', [1 0 1], 'DisplayName', 'u (W=32)', LineWidth=linew); % magenta
stairs(k, u_act16, 'LineStyle', '-', 'Color', [0 0 1], 'DisplayName', 'u (W=16)', LineWidth=linew); % blue

stairs(k, vel32, 'LineStyle', '-', 'Color', [1 0.5 0], 'DisplayName', 'vel (W=32)', LineWidth=linew); % orange
stairs(k, vel16, 'LineStyle', '-', 'Color', [0 1 1], 'DisplayName', 'vel (W=16)', LineWidth=linew); % cyan

xlabel('Time [s]', FontSize=24);
ylabel('Signals', FontSize=24);
legend('show', FontSize=20);
title('Comparison of signals (W=32 vs W=16)', FontSize=24);


% % 'figure' creates a new figure window for the plot
% figure;
% 
% linew = 3;
% % Referencia
% stairs(k,ref_fl(1,:),'Color', [0 0 0], 'LineWidth', linew,'LineStyle','--');
% 
% hold on;
% 
% % Actuación
% stairs(k,u_act(1,:), 'LineWidth', linew);
% 
% % Velocidad
% stairs(k,xk(1,:), 'LineWidth', linew,'Color', 'g');
% % Velocidad est
% %stairs(zhat(1,:));
% % Posición
% stairs(k,xk(2,:), 'LineWidth', linew);
% %stairs(k,zhat(3,:), 'LineWidth', linew);
% % Velocidad estimada
% %stairs(zhat(1,:));
% % Posición estimada
% %stairs(zhat(2, :));
% % Perturbación estimada
% stairs(k, zhat(3,:), 'LineWidth', linew);
% % Legends help to label each plotted line for better understanding
% legend('ref','u', 'vel', 'pos', 'pert', FontSize=24);
% 
% % 'grid on' adds a grid to the plot for better readability
% title('Servomotor simulation with implicit formulation (W=16, Q=7)', FontSize=24)
% xlabel('Time [s]', FontSize=24)
% ylabel('Control signals', FontSize=24)
% grid on;
% %disp(xk(:, end))
