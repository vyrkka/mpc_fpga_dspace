function [u1k,u2k,r1k,status1,status2] = MPCfull_f(x2k,d2k,r2k,x1k,d1k,xmpc1,xmpc2)

%% MPC2

% Steady-state

x2s_u2s = xmpc2.Aoff*[d2k;r2k];
x2s = x2s_u2s(1:3);
u2s = x2s_u2s(4:5);
x20h = x2k - x2s;

% Definitions

gvsws = xmpc2.hvsws - xmpc2.Gvsws*u2s;
bineq2 = kron(ones(xmpc2.N,1),gvsws);
f2 = 2*(xmpc2.BB'*xmpc2.Qh'*xmpc2.AA*x20h);
H2 = (xmpc2.H + xmpc2.H')/2;

% Solver

options = optimoptions('quadprog','Algorithm','active-set');
[u20h_opt, ~, status2, ~] = quadprog(H2, f2, xmpc2.Aineq, bineq2, [], [], [], [], zeros(8,1), options);

% Applied input

u2k = u20h_opt(1:2) + u2s;

%% MPC1

r1k = [u2k(1);0];

% Steady-state

x1s_u1s = xmpc1.Aoff*[d1k;r1k];
x1s = x1s_u1s(1:4);
u1s = x1s_u1s(5:6);
x10h = x1k - x1s;

% Definitions

gif = xmpc1.hif - xmpc1.Hif*xmpc1.Cif*x1s;
gvc = xmpc1.hvc - xmpc1.Hvc*u1s;
bineq1 = [kron(ones(xmpc1.N,1),gvc);...
    kron(ones(xmpc1.N,1),gif)- kron(eye(xmpc1.N),xmpc1.Gif)*xmpc1.AA*x10h];
f1 = 2*(xmpc1.BB'*xmpc1.Qh'*xmpc1.AA*x10h);
H1 = (xmpc1.H + xmpc1.H')/2;

% Solver

[u10h_opt, ~, status1, ~] = quadprog(H1, f1, xmpc1.Aineq, bineq1, [], [], [], [], zeros(8,1), options);

% Applied input

u1k = u10h_opt(1:2) + u1s;

end