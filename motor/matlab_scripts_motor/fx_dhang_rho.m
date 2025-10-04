
function rho = fx_dhang_rho(Q,H)
    % ------ QP PROBLEM ------ %
    % Min: 1/2*x'*Q*x + q'*x + g(z)
    % ST:  Hx + z = h
    %      z >= 0
    % g(z) is the indicator function of Z:
        % g(z) = 0 if z in Z,
        % g(z) = ∞ if any component of z not in Z

    % Define the singular decomposition of H as
    % H = U*S*V'
    % where U and V are orthonormal and S is diagonal with positive
    % real matrix entries
    [~,S,V] = svds(H);
    % Set Sd = (S'*S)^(-1/2)
    Sd = (S'*S)^(-1/2);
    % Calculate Pd as 
    % Pd = Sd'*V'*Q*V*Sd
    Pd = Sd'*V'*Q*V*Sd;
    % Calculate non-zero eigenvalues
    lambda_Pd  = eig(Pd);
    lambda_max = max(lambda_Pd); 
    beta_1     = 1/lambda_Pd(1);
    beta_2     = 1/lambda_max;
    % Solve eq 36 from Dang paper (Embedded ADMM-based 
    % QP Solver for MPC with polytopic constraints)
    % a4*rho^4 + a3*rho^3 + a2*rho^2 + a1*rho + a0
    a4 =  beta_1*beta_2*(beta_1^2 + beta_2^2);
    a3 = -(beta_1^3 + beta_2^3 - 3*beta_1*beta_2*(beta_1 + beta_2));
    a2 = -(beta_1 - beta_2)^2;
    a1 = -2*(beta_1 + beta_2);
    a0 = -2;
    eq_roots = roots([a4, a3, a2, a1, a0]);
    rho = abs(eq_roots(1));
end
