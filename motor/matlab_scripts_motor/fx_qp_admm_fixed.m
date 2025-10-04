%% QP SOLVER - ADMM
% ===============================================================================
% Alfonso Cortes Neira - Universidad Técnica Federico Santa María
% 16-02-2023
% Based on the work by Juan David Escárate
% ===============================================================================

function [tk, zk, uk] = fx_qp_admm_fixed(R_inv, q, H, h, init_tk, init_zk, init_uk, rho, iters)          
%     global QP_vars counter
    % ------ QP PROBLEM ------ %
    % Min: 0.5*tk'*H*tk + h'*tk
    % ST:  M*tk <= c
    % 
    % ADMM Reformulation
    % Min: 0.5*tk'*H*tk + h'*tk + g(zk)
    % ST:  M*tk + zk = c
    % g(zk) is the indicator function of Z:
        % g(zk) = 0 if zk in Z,
        % g(zk) = ∞ if any component of zk not in Z
    %
    % Q -> R^(n x n)
    % A -> R^(n x n)
    % q -> R^(n)
    % c -> R^(n)
    % x -> R^(n)
    % z -> R^(n) (slack variable)
    
    % init_tk -> Initial tk point
    % init_zk -> Initial zk point
    % init_uk -> Initial uk point
    % rho -> Rho value for Augmented Lagrangian
    % iters -> Maximum iterations
    
    % ------ CHECK NUMBER OF INPUT ARGUMENTS ------ %
    if nargin < 9 || nargin > 9
        errorStruct.message = 'Incorrect number of inputs';
        errorStruct.identifier = 'ADMM_QP:incorrectInputs';
        error(errorStruct);
    end

    % ------ DATA INITIALIZATION ------ %
    % Length of variables
    n = size(q,1);
    % Quantity of restrictions
    n_c = size(h,1);
    % Data initialization
    if nargin > 4
        tk = init_tk;
        zk = init_zk;
        uk = init_uk;
    else
        tk = zeros(n,1);
        zk = zeros(n_c,1);
        uk = zeros(n_c,1);
    end
    % ------ ADMM FORMULATION ------ %

    % Augmented Lagrangian scaled form
    % L_rho(x, z, u) = f(x) + g(z) + (rho/2)*||Ax + z - c + u||_2^2
    % where u -> y/rho (scaled dual variable)

    % X minimization
        % To minimize we should calculate d(L_rho)/dx derivative
        % d(L_rho)/dx = f'(x) + rho*A^T(Ax + v) = 0
        % where v -> z - c + u
        % d(L_rho)/dx = Qx + q^T + rho*A^T(Ax + v) = 0
        % x = (Q + rho*A^T*A)^-1 * (-rho*A^T*v - q^T)

    % Z minimization
        %Usually evaluating Projection_Z(z) is inexpensive; 
        % for example, if Z = [α, β] is an interval,
        % Projection_Z(z) = min{max{z,α},β}
        % In this case Z = [0, inf) so
        % Projection_Z(z) = max{z,0}
        
    % Iterations
    for k = 1:iters
        v_x = zk - h + uk;
        tk = R_inv * (-rho*H'*v_x - q);    % update x
           
        zk = max(0, -H*tk - uk + h);             % update z

        % Then we update the scaled dual variable
        uk = uk + (H*tk + zk - h);                % update u
    end

end