clc;clear;
format('longE')
W = 20;
Q = 5;
h5_file = "float_model_matlab.h5";
DNN =  init_net_floatL4(h5_file);


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

%Valores iniciales
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

        x_norm = ([zhat(1:end-1,i); ref(i)] - in_min) ./ (in_max - in_min);
        uk_net = eval_net_floatL4(x_norm,fc0W,fc0B,fc1W,fc1B,fc2W,fc2B,fc3W,fc3B,fc4W,fc4B);
        uk_net = (out_max - out_min).*uk_net + out_min;
        uk(:,i) = uk_net - zhat(3,i);
        % if(uk(:,i)> umax)
        %     uk(:,i) = umax;
        % end
        % if(uk(:,i)< umin)
        %     uk(:,i) = umin;
        % end

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

