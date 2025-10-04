clc;clear;
format('longE')

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
pert_max = 1;   %Perturbación máxima en valor absoluto

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
%rho = single(rho_set);
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
        % zhat(1:end-1,i) = xk(:,i);
        qt = ((zhat(1:end-1,i)-[0;ref(i)])'*qt_sinx0)';
        f = [e-E*zhat(1:end-1,i); E*zhat(1:end-1,i)-d];
        h2 = [f; b; -a];
%         f = cx_vec-Rx*E*zhat(1:end-1,i);
%         h2 = [f; cu_vec];
        % x_ADMM = zeros(N_QP, 1, 'single');        
        % z_ADMM = zeros(M_QP, 1, 'single');
        % u_ADMM = zeros(M_QP, 1, 'single');
        [x_ADMM, z_ADMM, u_ADMM] = fx_qp_admm(W_inv, qt, R, h2, x_ADMM, z_ADMM, u_ADMM, RhoRt_neg, ADMM_iters);
        %uk(:,i) = x_ADMM(1:M_SYS);
        uk(:,i) = x_ADMM(1:M_SYS) - zhat(3,i);
        %uk(:,i) = x_ADMM(1:M_SYS);

        % delta_max = 1;
        % delta = uk(:, i) - uk(:, i-1);
        % delta_clipped = max(min(delta, delta_max), -delta_max);
        % uk(:, i) = uk(:, i-1) + delta_clipped;

        if(uk(:,i)> umax)
            uk(:,i) = umax;
        end
        if(uk(:,i)< umin)
            uk(:,i) = umin;
        end
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

%Gráficos
figure;
linew = 3;
% Referencia
stairs(k,ref(1,:),'Color', [0 0 0], 'LineWidth', linew,'LineStyle','--');

hold on;

% Actuación
%stairs(k,uk(1,:), 'LineWidth', linew);
% Velocidad
%stairs(k,xk(1,:), 'LineWidth', linew,'Color', 'g');
% Posición
%stairs(k,xk(2,:), 'LineWidth', linew);
% Velocidad estimada
stairs(k,zhat(1,:), 'LineWidth', linew);
% Posición estimada
stairs(k,zhat(2,:), 'LineWidth', linew);
% Perturbación estimada
stairs(k,zhat(3,:), 'LineWidth', linew);

legend('ref', 'vel_{est}', 'pos_{est}', 'pert_{est}');
title('Servomotor simulation with implicit formulation', FontSize=24)
xlabel('Time (s)', FontSize=24)
ylabel('Estimated states', FontSize=24)
grid on;


% % % figure;
% % % linew = 2;
% % % 
% % % % 1) Arriba izquierda
% % % subplot(2,2,1);
% % % stairs(k, ref(1,:), 'k--', 'LineWidth', linew); hold on;
% % % stairs(k, uk(1,:), 'LineWidth', linew);
% % % stairs(k, xk(1,:), 'g', 'LineWidth', linew);
% % % stairs(k, xk(2,:), 'LineWidth', linew);
% % % legend('ref','u','vel','pos');
% % % title('Reference, input, velocity and position', FontSize=20);
% % % xlabel('Time [s]', FontSize=20)
% % % ylabel('Control signals', FontSize=20)
% % % grid on;
% % % 
% % % % 2) Arriba derecha
% % % subplot(2,2,2);
% % % stairs(k, ref(1,:), 'k--', 'LineWidth', linew); hold on;
% % % stairs(k, zhat(1,:), 'g', 'LineWidth', linew);
% % % stairs(k, zhat(2,:), 'LineWidth', linew);
% % % stairs(k, zhat(3,:), 'LineWidth', linew);
% % % legend('ref','vel_{est}','pos_{est}','pert_{est}');
% % % title('Reference and estimated states', FontSize=20);
% % % xlabel('Time [s]', FontSize=20)
% % % ylabel('Estimated states', FontSize=20)
% % % grid on;
% % % 
% % % % 3) Abajo derecha (velocidad en rango k=10.2 a 12.3)
% % % subplot(2,2,3);
% % % idx = (k >= 10.2 & k <= 12.3);
% % % stairs(k(idx), xk(1,idx), 'g', 'LineWidth', linew);
% % % legend('vel');
% % % title('Zoom in velocity saturation (v=-2)', FontSize=20);
% % % xlabel('Time [s]', FontSize=20)
% % % ylabel('Velocity [rad/s]', FontSize=20)
% % % ylim([-2.01 -1.99]);
% % % grid on;
% % % 
% % % % 4) Abajo izquierda (velocidad en rango k=20.2 a 22.3)
% % % subplot(2,2,4);
% % % idx = (k >= 20.2 & k <= 22.3);
% % % stairs(k(idx), xk(1,idx), 'g', 'LineWidth', linew);
% % % legend('vel');
% % % title('Zoom in velocity saturation (v=2)', FontSize=20);
% % % xlabel('Time [s]', FontSize=20)
% % % ylabel('Velocity [rad/s]', FontSize=20)
% % % ylim([1.99 2.01]);
% % % grid on;



% % Escribir matrices
% txtfile = "system.cpp";
% txtfileID = fopen(txtfile,'w');
% 
% fprintf(txtfileID, "\n#include "+char(34)+"system.hpp"+char(34)+"\n\n");
% 
% fx_cpp_print_matrix(txtfileID, R, "data_t R[M_QP][N_QP]", M_QP, N_QP)
% fx_cpp_print_matrix(txtfileID, -a, "data_t a_neg[N_QP]", N_QP)
% fx_cpp_print_matrix(txtfileID, b, "data_t b[N_QP]", N_QP)
% fx_cpp_print_matrix(txtfileID, d, "data_t d[N_SYS*N_HOR]", (N_SYS*N_HOR))
% fx_cpp_print_matrix(txtfileID, e, "data_t e[N_SYS*N_HOR]", (N_SYS*N_HOR))
% fx_cpp_print_matrix(txtfileID, E, "data_t E[N_SYS*N_HOR][N_SYS]", (N_SYS*N_HOR), N_SYS)
% fx_cpp_print_matrix(txtfileID, qt_sinx0, "data_t qt_sinx0[N_SYS][N_QP]", N_SYS, N_QP)
% 
% fx_cpp_print_matrix(txtfileID, W_inv, "data_t W_inv[N_QP][N_QP]", N_QP, N_QP)
% fx_cpp_print_matrix(txtfileID, RhoRt_neg, "data_t RhoRt_neg[N_QP][M_QP]", N_QP, M_QP)
% 
% fx_cpp_print_matrix(txtfileID, Ax, "data_t Ax[N_SYS+1][N_SYS+1]", N_SYS+1, N_SYS+1)
% fx_cpp_print_matrix(txtfileID, Bx, "data_t Bx[N_SYS+1][M_SYS]", N_SYS+1, M_SYS)
% fx_cpp_print_matrix(txtfileID, Lobs, "data_t Lx[N_SYS+1][P_SYS]", N_SYS+1, P_SYS)
% 
% fprintf(txtfileID, "\n");
% 
% fclose(txtfileID);

