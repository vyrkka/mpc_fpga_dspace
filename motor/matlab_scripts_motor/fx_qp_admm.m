%% QP SOLVER - ADMM
% ===============================================================================
% Modified by Francisco Abusleme 11-04-2025
% Alfonso Cortes Neira - Universidad Técnica Federico Santa María
% 16-02-2023
% Based on the work by Juan David Escárate
% ===============================================================================

function [xk, zk, uk] = fx_qp_admm(W_inv, q, R, h, init_xk, init_zk, init_uk, RhoRt_neg, iters)          
%     global QP_vars counter
    % ------ QP PROBLEM ------ %
    % Min: 0.5*xk'*Q*xk + q'*xk
    % ST:  R*xk <= c
    
    % init_xk -> Initial xk point
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
        xk = init_xk;
        zk = init_zk;
        uk = init_uk;
    else
        xk = zeros(n,1);
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
        xk = W_inv * (RhoRt_neg*v_x - q);    % update x
           
        zk = max(0, -R*xk - uk + h);             % update z

        % Then we update the scaled dual variable
        uk = uk + (R*xk + zk - h);                % update u
    end

end