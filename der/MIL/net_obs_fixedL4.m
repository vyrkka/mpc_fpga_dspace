clc;clear;
format('longE')

h5_file = "float_motordc_relufinal.h5";
W_qt = 20;
Q_qt = 5;
DNN =  init_net(h5_file, W_qt, Q_qt);


% Arreglo de tiempo
h = 1e-2;       % h: paso de tiempo en segundos 
ncount = 1;     % ncount: pasos de tiempo por muestra
Ts = h*ncount;  % Ts: Periodo de muestreo en segundos
tsimu = 80;     % tsimu: Tiempo de simulación en segundos
k=0:h:tsimu-h;  % k: Arreglo de tiempo
T = tsimu/2;         % T: Periodo de la referencia cuadrada (en segundos)

% Variables
N_HOR = 4;      % N_HOR: tamaño del horizonte de predicción
ADMM_iters = 30;
alpha = 0.4;    %alpha: factor en función de costo
pert = 0;     %Perturbación entrada

% Restricciones tipo caja para motor DC
% Valores absolutos máximos
u_max = 10;
vel_max = 10;
pos_max = 2*pi;
ref_max = 2*pi;
pert_max = 1;   %Perturbación máxima en valor absoluto
    
in_max = [vel_max; pos_max; ref_max];
in_min = [-vel_max; -pos_max; -ref_max];
out_max = [u_max];
out_min = [-u_max];

% Referencia cuadrada
rmin = 10;
rmax = 5.8*180/pi;
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
    if(abs(uk(:,i-1)) < pert)
        u_pert = 0;
    end

    %SISTEMA
    xk(:,i) = As*xk(:,i-1)+Bs*u_pert; % Cálculo del siguiente estado

    %CONTROL
    if(count == ncount-1) %cambia actuación
        count = 0;

        %ESTIMACIÓN
        zhat(:,i) = Ax*zhat(:,i-1) + Bx*uk(:,i-1) + Lobs*(C*xk(:,i-1)- yhat(:,i-1));
        if(zhat(3,i) > pert_max)
            zhat(3,i) = pert_max;
        end
        if(zhat(3,i) < -pert_max)
            zhat(3,i) = -pert_max;
        end

        %CÁLCULO uk
        qt = ((zhat(1:end-1,i)-[0;ref(i)])'*qt_sinx0)';
        f = [e-E*zhat(1:end-1,i); E*zhat(1:end-1,i)-d];
        h2 = [f; b; -a];
%         f = cx_vec-Rx*E*zhat(1:end-1,i);
%         h2 = [f; cu_vec];
        %[x_ADMM, z_ADMM, u_ADMM] = fx_qp_admm(W_inv, qt, R, h2, x_ADMM, z_ADMM, u_ADMM, RhoRt_neg, ADMM_iters);
        %uk(:,i) = x_ADMM(1:M_SYS) - zhat(3,i);

        x_norm = ([zhat(1:end-1,i); ref(i)] - in_min) ./ (in_max - in_min);
        uk_net = eval_net(x_norm, W_qt, Q_qt, fc0W,fc0B,fc1W,fc1B,fc2W,fc2B,fc3W,fc3B);
        uk_net = (out_max - out_min).*uk_net + out_min;
        uk(:,i) = uk_net - zhat(3,i);
        if(uk(:,i)> umax)
            uk(:,i) = umax;
        end
        if(uk(:,i)< umin)
            uk(:,i) = umin;
        end

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

%Gráficos
figure;

% Referencia
stairs(ref(1,:));

hold on;

% Actuación
stairs(uk(1,:));

% Velocidad
stairs(xk(1,:));
% Posición
stairs(xk(2, :));

% Velocidad estimada
%stairs(zhat(1,:));
% Posición estimada
%stairs(zhat(2, :));
% Perturbación estimada
%stairs(zhat(3,:));

legend('ref', 'u', 'vel', 'pos');
grid on;


% Escribir matrices
txtfile = "system.cpp";
txtfileID = fopen(txtfile,'w');

fprintf(txtfileID, "\n#include "+char(34)+"system.hpp"+char(34)+"\n\n");

fx_cpp_print_matrix(txtfileID, R, "data_t R[M_QP][N_QP]", M_QP, N_QP)
fx_cpp_print_matrix(txtfileID, -a, "data_t a_neg[N_QP]", N_QP)
fx_cpp_print_matrix(txtfileID, b, "data_t b[N_QP]", N_QP)
fx_cpp_print_matrix(txtfileID, d, "data_t d[N_SYS*N_HOR]", (N_SYS*N_HOR))
fx_cpp_print_matrix(txtfileID, e, "data_t e[N_SYS*N_HOR]", (N_SYS*N_HOR))
fx_cpp_print_matrix(txtfileID, E, "data_t E[N_SYS*N_HOR][N_SYS]", (N_SYS*N_HOR), N_SYS)
fx_cpp_print_matrix(txtfileID, qt_sinx0, "data_t qt_sinx0[N_SYS][N_QP]", N_SYS, N_QP)

fx_cpp_print_matrix(txtfileID, W_inv, "data_t R_inv[N_QP][N_QP]", N_QP, N_QP)
fx_cpp_print_matrix(txtfileID, RhoRt_neg, "data_t W[N_QP][M_QP]", N_QP, M_QP)

fprintf(txtfileID, "\n");

fclose(txtfileID);

