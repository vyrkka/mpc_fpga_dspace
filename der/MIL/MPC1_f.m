function [uk,status] = MPC1_f(xk,dk,rk,dik,thetak,xmpc1)

% Steady-state

xs_us = xmpc1.Aoff*[dk;rk];
xs = xs_us(1:4);
us = xs_us(5:6);
x0h = xk - xs;

T_thk = [[cos(thetak), -sin(thetak)];[sin(thetak), cos(thetak)]];
Gvc = xmpc1.Hvc*T_thk;

% Inequality constraints Aineq*U <= bineq

%Aineq = [kron(eye(xmpc1.N),Gvc), zeros(xmpc1.N*xmpc1.Lvc,xmpc1.neps)]; % over states
Aineq = [[kron(eye(xmpc1.N),Gvc), zeros(xmpc1.N*xmpc1.Lvc,xmpc1.neps)]; (kron(eye(xmpc1.N),xmpc1.Gif))*xmpc1.BB ...
    - [zeros((xmpc1.N)*xmpc1.Lif, xmpc1.nu1*xmpc1.N) , kron(ones(xmpc1.N,1),xmpc1.geps)]];


% Definitions

gif = xmpc1.hif - xmpc1.Hif*xmpc1.Cif*xs;
gvc = xmpc1.hvc - Gvc*(us-dik);
bineq = [kron(ones(xmpc1.N,1),gvc);...
    kron(ones(xmpc1.N,1),gif)- kron(eye(xmpc1.N),xmpc1.Gif)*xmpc1.AA*x0h];
f = 2*(xmpc1.BB'*xmpc1.Qh'*xmpc1.AA*x0h);
H = (xmpc1.H + xmpc1.H')/2;

% Solver

% n = length(f);
% Aeq = zeros(0,n);
% beq = zeros(0,1);
% opt = mpcActiveSetOptions;
% iA0 = false(size(bineq));
%[u0h_opt,status] = mpcActiveSetSolver(xmpc1.H,f,xmpc1.Aineq,bineq,Aeq,beq,iA0,opt);

options = optimoptions('quadprog','Algorithm','active-set');
options.MaxIterations = 50;
options.OptimalityTolerance = 1e-10;
options.ConstraintTolerance = 1e-10;
options.StepTolerance = 1e-10;
[u0h_opt, ~, status, ~] = quadprog(H, f, Aineq, bineq, [], [], [], [], zeros(8,1), options);

% Applied input

uk = u0h_opt(1:2) + us - dik;

end