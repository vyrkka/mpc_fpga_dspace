function [uk,status] = MPC2_f(xk,dk,rk,xmpc2)

% Steady-state

xs_us = xmpc2.Aoff*[dk;rk];
xs = xs_us(1:3);
us = xs_us(4:5);
x0h = xk - xs;

% Definitions

gvsws = xmpc2.hvsws - xmpc2.Gvsws*us;
bineq = kron(ones(xmpc2.N,1),gvsws);
f = 2*(xmpc2.BB'*xmpc2.Qh'*xmpc2.AA*x0h);
H = (xmpc2.H + xmpc2.H')/2;

% Solver

% n = length(f);
% Aeq = zeros(0,n);
% beq = zeros(0,1);
% opt = mpcActiveSetOptions;
% iA0 = false(size(bineq));
%[u0h_opt,status] = mpcActiveSetSolver(xmpc1.H,f,xmpc1.Aineq,bineq,Aeq,beq,iA0,opt);

options = optimoptions('quadprog','Algorithm','active-set');
[u0h_opt, ~, status, ~] = quadprog(H, f, xmpc2.Aineq, bineq, [], [], [], [], zeros(8,1), options);

% Applied input

uk = u0h_opt(1:2) + us;

end