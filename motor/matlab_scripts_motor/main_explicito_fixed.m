%dbstop if warning fi:overflow
%dbclear if warning fi:overflow
wl = 21; %7 para parte entera
fl = 14;

wl_est = wl;
fl_est = fl;


h5_file = "fixed_motorB_L3M9W21Q7_pruned_matlab.h5";
%IMPORTANTE: cambiar funciones init_net_fixedLX() y eval_net_fixedLX()
%según el número de capas L.
W_qt = wl;
Q_qt = wl-fl;
F_ = fi_config(W_qt,Q_qt);
DNN_pars =  init_net_fixedL3(h5_file, W_qt, Q_qt, F_);
P = fipref;
P.LoggingMode = 'off';
P.NumericTypeDisplay = 'none';
P.FimathDisplay = 'none';

% Arreglo de tiempo
h = 1e-3;
ncount = 12; 
tsimu = 40;          % tsimu: Tiempo de simulación en segundos
k=0:h:tsimu-h;    % t: Arreglo de tiempo
T = 20; 

%referencia
rmin = 10;
rmax = 350;
square_wave = square(2*pi*(1/T)*k); 
ref_fl = (pi/180)*((rmax-rmin)/2*square_wave + (rmax+rmin)/2);

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

A = fi(A,1, wl, fl);
A.fimath = F_;
B = fi(B,1, wl, fl);
B.fimath = F_;
C = fi(C,1, wl, fl);
C.fimath = F_;

x0 = single([0;0.0]);    % x0: velocidad y posicion angular inicial
zhat0 = single([0;0; 0]);

% Datos de las restricciones
u_max = 10;
vel_max = 2;
pos_max = 2*pi;
ref_max = 2*pi;
pert_max = 1;   %Perturbación máxima en valor absoluto
    
in_max = [10; pos_max; ref_max];
in_min = [-10; 0; 0];
out_max = [u_max];
out_min = [-u_max];

N_SYS = size(A,1);      % numero de estados
M_SYS = size(B,2);      % numero de actuaciones
P_SYS = size(C,1);      % numero de salidas

xk = zeros(N_SYS, length(k), 'single');
zhat = zeros(N_SYS+1, length(k), 'single');
yhat = zeros(P_SYS, length(k), 'single');
uk = zeros(M_SYS, length(k), 'single');

u_act = zeros(M_SYS, length(k), 'single');

xk(:,1) = x0;
zhat(:,1) = zhat0;
yhat(:,2) = C*(A*zhat(1:end-1,1));


count = ncount-1;
x_fixed = fi(0,1, wl, fl);
u_fixed = fi(0,1, wl, fl);
x_fixed.fimath = F_;
u_fixed.fimath = F_;

yhat = fi(yhat,1, wl, fl);
yhat.fimath = F_;

zhat_fixed = fi(zhat(:,1),1,wl,fl);
zhat_fixed.fimath = F_;

for i=2:length(k)

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
        zhat_fixed = fi(zhat(:,i-1),1, wl_est, fl_est);
        zhat_fixed.fimath = F_;
        x_fixed = fi(xk(:,i-1),1, wl_est, fl_est);
        x_fixed.fimath = F_;
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
        % q = ((zhat_fixed(1:end-1)-[0;ref(i)])'*G)';
        % f = [e-D*zhat_fixed(1:end-1); D*zhat_fixed(1:end-1)-d];
        % h2 = [f; b; -a];
        % 
        % 
        % [t_ADMM, z_ADMM, u_ADMM] = fx_qp_admm_fixed(R_inv, q, H, h2, t_ADMM, z_ADMM, u_ADMM, rho, ADMM_iters);
        x_norm = ([zhat(1:end-1,i); ref(i)] - in_min) ./ (in_max - in_min);
        uk_net = eval_net_fixedL3(x_norm, DNN_pars, F_);
        uk_net = (out_max - out_min).*uk_net + out_min;
            %CONTROL
        %h2 = fi(h2,1, wl, fl);
        %h2.fimath = F_;
        uk(:,i) = uk_net;
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

% % 'figure' creates a new figure window for the plot
figure;

linew = 3;
% Referencia
stairs(k,ref_fl(1,:),'Color', [0 0 0], 'LineWidth', linew,'LineStyle','--');

hold on;

% Actuación
stairs(k,u_act(1,:), 'LineWidth', linew);

% Velocidad
stairs(k,xk(1,:), 'LineWidth', linew,'Color', 'g');
% Velocidad est
%stairs(zhat(1,:));
% Posición
stairs(k,xk(2,:), 'LineWidth', linew);
%stairs(k,zhat(3,:), 'LineWidth', linew);
% Velocidad estimada
%stairs(zhat(1,:));
% Posición estimada
%stairs(zhat(2, :));
% Perturbación estimada
stairs(k, zhat(3,:), 'LineWidth', linew);
% Legends help to label each plotted line for better understanding
legend('ref','u', 'vel', 'pos', 'pert', FontSize=24);

% 'grid on' adds a grid to the plot for better readability
title('Servomotor simulation with explicit formulation (W=21, Q=7)', FontSize=24)
xlabel('Time [s]', FontSize=24)
ylabel('Control signals', FontSize=24)
grid on;
