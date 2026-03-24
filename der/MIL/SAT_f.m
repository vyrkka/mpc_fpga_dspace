function rsatk = SAT_f(rk,xsat)

bineq = xsat.hif - xsat.Hif*rk;
Aineq = xsat.Hif;

options = optimoptions('quadprog','Algorithm','active-set','Display','none');
[rhatk, ~, ~, ~] = quadprog(eye(2), zeros(2,1), Aineq, bineq, [], [], [], [], zeros(2,1), options);

rsatk = rhatk + rk;

end

