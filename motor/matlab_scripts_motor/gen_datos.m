
clc;clear;
format('longE')

% Arreglo de tiempo
Ts = 12e-3;  % Ts: Periodo de muestreo en segundos

% Variables
N_HOR = 4;      % N_HOR: tamaño del horizonte de predicción
ADMM_iters = 250;
alpha = 0.8;    %alpha: factor en función de costo

% Restricciones tipo caja para motor DC
% Valores absolutos máximos
u_max = 10;
vel_max = 2;
pos_max = 2*pi;

% Matrices lazo control discreto
a = 28.8582;
K = 45.0051;
A = [exp(-a*Ts) 0; (1-exp(-a*Ts))/a 1 ];
B = [1-exp(-a*Ts); exp(-a*Ts)/a-1/a+Ts ]*K/a;
C = [0 1];

% Tamaño sistema
N_SYS = size(A,1);      % numero de estados
M_SYS = size(B,2);      % numero de actuaciones
P_SYS = size(C,1);      % numero de salidas

%Tamaño problema QP
N_QP = N_HOR * M_SYS;               %Número de variables de decisión
M_QP = N_HOR * (2*N_SYS + 2*M_SYS); %Número de restricciones 

%Matrices problema QP
Gamma=1;
Omega=C'*C*alpha;
[Linf,OmegaN,~]=dlqr(A,B,Omega,Gamma);
[E,F] = fx_dense_matrices(A,B,N_HOR);      
G = blkdiag(kron(eye(N_HOR-1),Omega),OmegaN);
H = kron(eye(N_HOR),Gamma);
Q = 2*(F'*G*F + H);                          
Q = (Q+Q')/2;
E = single(E);
qt_sinx0 = single(2*E'*G*F); 

Cx = [eye(N_SYS);-eye(N_SYS)];  %Restricciones tipo caja
Rx = kron(eye(N_HOR),Cx);
Cu = [eye(M_SYS);-eye(M_SYS)];  %Restricciones tipo caja
Ru = kron(eye(N_HOR),Cu);
Ru2 = [eye(N_QP);-eye(N_QP)];
R = [Rx*F;Ru];             
R = [F;-F;Ru2];

cx = [vel_max; pos_max; -vel_max; -pos_max];
cx_vec = single(kron(ones(N_HOR,1),cx));
cu = [u_max;-u_max];
cu_vec = single(kron(ones(N_HOR,1),cu));

 
% umin, umax en Volts:
umin = single(-u_max);
umax = single(u_max);
% xmin, xmax: rad/s, rad
xmax = single([vel_max;pos_max]);
xmin = single([-vel_max;-pos_max]);                    
a = single(kron(ones(N_HOR,1),umin));      
b = single(kron(ones(N_HOR,1),umax));       
d = single(kron(ones(N_HOR,1),xmin));      
e = single(kron(ones(N_HOR,1),xmax)); 

rho = single(fx_dhang_rho(Q,R));            
Q = single(Q);
R = single(R);
W = Q + rho*(R'*R);
W_inv = W \ eye(size(W,1));
RhoRt_neg = -rho*R';

%Valores iniciales
x_ADMM = zeros(N_QP, 1, 'single');        
z_ADMM = zeros(M_QP, 1, 'single');
u_ADMM = zeros(M_QP, 1, 'single');
% 

total_data_points = 1e5;
data_batch_size = 1e3;
seed = 69;
rng(seed)

csv_file = "motorB.csv";

%writematrix(["x0","x1","r","u"], csv_file);
%Rangos de estados y referencias
ranges.min = [-10, 0, 0];
ranges.max = [10, 2*pi, 2*pi];
% data = [x0, x1, r, u];
range=struct('xmin',ranges.min,'xmax',ranges.max);
ranges.total_range = ranges.max - ranges.min;


data_dist = "uniform";
current_data_dist = "uniform";

x_random = zeros(N_SYS+P_SYS, data_batch_size);
uk = zeros(M_SYS, data_batch_size, 'single');
for i = 0: total_data_points
        
    if data_dist == "mixed" && (i >= total_data_points/2)
        current_data_dist = "uniform";
    end

    idx = mod(i, data_batch_size)+1;

    if current_data_dist == "gaussian"
        x_random(:,idx) = randn(N_SYS+P_SYS,1).*ranges.total_range'/5;
        x_random(:,idx) = max(min(x_random(:,idx),ranges.max'),ranges.min');
    else
        % Uniform by default
        x_random(:,idx) = rand(N_SYS+P_SYS,1).*ranges.total_range' + ranges.min';
    end

    %Cálculo actuaciones
    xk = x_random(1:N_SYS,idx);
    rk = x_random(N_SYS+1:N_SYS+P_SYS,idx);
    qt = ((xk-[0;rk])'*qt_sinx0)'; %Arreglar
    f = [e-E*xk; E*xk-d];
    h2 = [f; b; -a];
    x_ADMM = zeros(N_QP, 1, 'single');        
    z_ADMM = zeros(M_QP, 1, 'single');
    u_ADMM = zeros(M_QP, 1, 'single');
    [x_ADMM, z_ADMM, u_ADMM] = fx_qp_admm(W_inv, qt, R, h2, x_ADMM, z_ADMM, u_ADMM, RhoRt_neg, ADMM_iters);
    uk(:,idx) = x_ADMM(1:M_SYS);
    if(uk(:,idx)> umax)
        uk(:,idx) = umax;
    end
    if(uk(:,idx)< umin)
        uk(:,idx) = umin;
    end

    % Write data
    if mod(i,data_batch_size) == data_batch_size-1
        writematrix([x_random; uk(1:M_SYS,:)]', csv_file,'WriteMode','append');
    end
end