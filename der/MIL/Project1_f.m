function u_proj = Project1_f(xk,uk,dk,thetak,xproj1)

xk1 = xproj1.Ad1*xk + xproj1.Bd1*uk + xproj1.Bod1*dk;
T_thk = [[cos(thetak), -sin(thetak)];[sin(thetak), cos(thetak)]];

G_vF = [[xproj1.Hvc*T_thk, zeros(xproj1.Lvc,1)];...
    [xproj1.Hif*xproj1.Cif*xproj1.Bd1,-xproj1.Hif*[1;1]]];

g_vf = [[xproj1.hvc - xproj1.Hvc*T_thk*uk];...
    [xproj1.hif - xproj1.Hif*xproj1.Cif*xk1]];

bineq = g_vf;
Aineq = G_vF;

H = xproj1.H;

options = optimoptions('quadprog','Algorithm','active-set','Display','none');
[v_opt, ~, ~, ~] = quadprog(H, zeros(3,1), Aineq, bineq, [], [], [], [], zeros(3,1), options);

utilde = v_opt(1:2);
u_proj = uk + utilde;

end

