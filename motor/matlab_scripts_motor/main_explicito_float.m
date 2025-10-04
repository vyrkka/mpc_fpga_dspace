%clc;clear;
format('longE')

h5_file = "float_motorA_L4M9_matlab.h5"; 
%IMPORTANTE: cambiar funciones init_net_floatLX() y eval_net_floatLX()
%según el número de capas L.
DNN_pars =  init_net_floatL4(h5_file);
% Arreglo de tiempo
h = 1e-3;       % h: paso de tiempo en segundos 
ncount = 12;     % ncount: pasos de tiempo por muestra
Ts = h*ncount;  % Ts: Periodo de muestreo en segundos
tsimu = 40;     % tsimu: Tiempo de simulación en segundos
k = 0:h:tsimu-h;  % k: Arreglo de tiempo
T = tsimu/2;         % T: Periodo de la referencia cuadrada (en segundos)

% Variables
N_HOR = 3;      % N_HOR: tamaño del horizonte de predicción
ADMM_iters = 20; %20 para imp % 30 para exp
alpha = 0.8;    %alpha: factor en función de costo
pert_in = 0.3;     %Perturbación entrada
%rho_set = 2;
% Restricciones tipo caja para motor DC
% Valores absolutos máximos
u_max = 10;
vel_max = 2;
pos_max = 2*pi;
ref_max = 2*pi;
pert_max = 1;   %Perturbación máxima en valor absoluto

in_max = [10; pos_max; ref_max];
in_min = [-10; 0; 0];
out_max = [u_max];
out_min = [-u_max];

% Referencia cuadrada
rmin = 10;
rmax = 350;
square_wave = square(2*pi*(1/T)*k); 
ref = (pi/180)*((rmax-rmin)/2*square_wave + (rmax+rmin)/2);

% Sistema físico discreto (Motor DC)
a = 28.8582;
K = 45.0051;
As=[exp(-a*h) 0; (1-exp(-a*h))/a 1 ];
Bs=[1-exp(-a*h); exp(-a*h)/a-1/a+h ]*K/a;
Cs = [0 1];

% Matrices lazo control discreto
A = [exp(-a*Ts) 0; (1-exp(-a*Ts))/a 1 ];
B = [1-exp(-a*Ts); exp(-a*Ts)/a-1/a+Ts ]*K/a;
C = [0 1];

% Diseno de Observador
Ax = [A B;0 0 1];
Bx = [B; 0];
Cx = [0 1 0];
Lobs = acker(Ax' ,Cx' ,[0.5 0.5 0.5])';


% Tamaño sistema
N_SYS = size(A,1);      % numero de estados
M_SYS = size(B,2);      % numero de actuaciones
P_SYS = size(C,1);      % numero de salidas

%Tamaño problema QP
N_QP = N_HOR * M_SYS;               %Número de variables de decisión
M_QP = N_HOR * (2*N_SYS + 2*M_SYS); %Número de restricciones 

%Valores iniciales
x_ADMM = zeros(N_QP, 1, 'single');        
z_ADMM = zeros(M_QP, 1, 'single');
u_ADMM = zeros(M_QP, 1, 'single');
xk = zeros(N_SYS, length(k), 'single');         %Estado sistema
zhat = zeros(N_SYS+1, length(k), 'single');     %Estado extendido (con perturbación)
yhat = zeros(P_SYS, length(k), 'single');       %Salida estimada
uk = zeros(M_SYS, length(k), 'single');         %Actuación

x1_0 = 0;
x2_0 = 0;
x0 = single([x1_0;x2_0]);
zhat0 = single([x1_0;x2_0;0]);
xk(:,1) = x0;
zhat(:,1) = zhat0;
yhat(:,1) = C*(A*zhat(1:end-1,1));


%Main loop
count = ncount-1;   % ncount: pasos de tiempo por muestra
for i=2:length(k)-1

    %PERTURBACION
    u_pert = uk(:,i-1);
    if(abs(uk(:,i-1)) < pert_in)
        u_pert = 0;
    end

    %SISTEMA
    xk(:,i) = As*xk(:,i-1)+Bs*u_pert; % Cálculo del siguiente estado

    %CONTROL
    if(count == ncount-1) %cambia actuación
        count = 0;
        %zhat(2,i-1) = xk(2,i);
        %ESTIMACIÓN
        zhat(:,i) = Ax*zhat(:,i-1) + Bx*uk(:,i-1) + Lobs*(C*xk(:,i-1)- yhat(:,i-1));
        %temp = zhat(2,i);
        %zhat(2,i) = xk(2,i);
        if(zhat(3,i) > pert_max)
            zhat(3,i) = pert_max;
        end
        if(zhat(3,i) < -pert_max)
            zhat(3,i) = -pert_max;
        end
        %CÁLCULO uk
        x_norm = ([zhat(1:end-1,i); ref(i)] - in_min) ./ (in_max - in_min);
        uk_net = eval_net_floatL4(x_norm, DNN_pars);
        uk_net = (out_max - out_min).*uk_net + out_min;
        %uk(:,i) = x_ADMM(1:M_SYS);
        uk(:,i) = uk_net - zhat(3,i);
        %uk(:,i) = x_ADMM(1:M_SYS);

        % delta_max = 1;
        % delta = uk(:, i) - uk(:, i-1);
        % delta_clipped = max(min(delta, delta_max), -delta_max);
        % uk(:, i) = uk(:, i-1) + delta_clipped;

        %zhat(2,i) = temp;
        %PREDICCIÓN
        yhat(:,i) = C*zhat(1:end-1,i);
    else 
        count = count+1;

        %si no hay cálculo, se retienen los valores
        if(i==2)
            uk(:,i) = 0;
        else
            uk(:,i) = uk(:,i-1);
        end
        zhat(:,i) = zhat(:,i-1);
        yhat(:,i) = yhat(:,i-1);
    end

end

figure;

linew = 3;
% Referencia
stairs(k,ref(1,:),'Color', [0 0 0], 'LineWidth', linew,'LineStyle','--');

hold on;

% Actuación
stairs(k,uk(1,:), 'LineWidth', linew);

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
title('Servomotor simulation with explicit formulation', FontSize=24)
xlabel('Time [s]', FontSize=24)
ylabel('Control signals', FontSize=24)
grid on;



%plots comparacion velocidades

% vela = xk(1,:);
% idx = (k >= 20.2 & k <= 22.3);
% stairs(k(idx),vela(idx), 'LineWidth', linew);
% ylim([1.99,2])
% hold on;

% stairs(k(idx),velb(idx), 'LineWidth', linew);
% ylim([1.99,2])
% legend('velA', 'velB');
% title('Comparison of velocities in saturation v=2', FontSize=24)
% xlabel('Time (s)', FontSize=24)
% ylabel('Velocities (rad/s)', FontSize=24)
% grid on;
