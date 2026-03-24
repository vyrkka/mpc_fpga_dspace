%% MPC1 Tuning

xs.MPC1.Q = xs.model.C1s'*xs.model.C1s;
xs.MPC1.R = 5e0*eye(2);
xs.MPC1.N = 3; % Prediction/Control Horizon
xs.MPC1.nu1 = xs.model.nu1;
xs.MPC1.neps = 2; % Dimension of slack variable over "if"
xs.MPC1.Qeps = 1e9*eye(xs.MPC1.neps); %1e6

[xs.MPC1.K,xs.MPC1.S] = dlqr(xs.model.Ad1,xs.model.Bd1,xs.MPC1.Q,xs.MPC1.R);

% Offset-free calculation: [xinf ; uinf] = Aoff*[-Bod*dk; xref]

xs.MPC1.Aoff = inv([[(xs.model.Ad1-eye(4)), xs.model.Bd1];[zeros(2), eye(2), zeros(2)]]) * [[-xs.model.Bod1, zeros(4,2)];[zeros(2), eye(2)]];

% Definitions

xs.MPC1.Lif = 12; 
xs.MPC1.Lvc = 6;

xs.MPC1.AA = [xs.model.Ad1 ; xs.model.Ad1^2 ; xs.model.Ad1^3];
xs.MPC1.BB = [[xs.model.Bd1, zeros(4,4), zeros(4,xs.MPC1.neps)]; [xs.model.Ad1*xs.model.Bd1, xs.model.Bd1, zeros(4,2), zeros(4,xs.MPC1.neps)]; [(xs.model.Ad1^2)*xs.model.Bd1, xs.model.Ad1*xs.model.Bd1, xs.model.Bd1, zeros(4,xs.MPC1.neps)]];

xs.MPC1.Cif = [eye(2), zeros(2)];
[xs.MPC1.Hif, xs.MPC1.hif] = circle2poly(xs.model.max.if, xs.MPC1.Lif, false);
xs.MPC1.Gif = xs.MPC1.Hif*xs.MPC1.Cif;
xs.MPC1.geps = xs.MPC1.Hif;
[xs.MPC1.Hvc, xs.MPC1.hvc] = circle2poly(xs.model.max.vc_alfabeta, xs.MPC1.Lvc, false);


% Cost Function

xs.MPC1.Qh = blkdiag(kron(eye(xs.MPC1.N-1),xs.MPC1.Q),xs.MPC1.S);
xs.MPC1.Rh = blkdiag(kron(eye(xs.MPC1.N),xs.MPC1.R),xs.MPC1.Qeps);

xs.MPC1.H = 2*(xs.MPC1.BB'*xs.MPC1.Qh*xs.MPC1.BB + xs.MPC1.Rh);


% Save MPC1 in sub structure

xmpc1 = xs.MPC1;

%% MPC2 Tuning

xs.MPC2.Q = xs.model.C2s'*xs.model.C2s;
xs.MPC2.R = 5e-1*eye(2);
xs.MPC2.N = 3;
xs.MPC2.neps = 2;
xs.MPC2.Qeps = 5e7*eye(xs.MPC2.neps); 

[xs.MPC2.K,xs.MPC2.S] = dlqr(xs.model.Ad2,xs.model.Bd2,xs.MPC2.Q,xs.MPC2.R);

% Offset-free calculation: [xinf ; uinf] = Aoff*[-Bod*dk; xref]

xs.MPC2.Aoff = inv([[(xs.model.Ad2-eye(3)), xs.model.Bd2];[eye(2), zeros(2,1), zeros(2)]]) * [[-xs.model.Bod2, zeros(3,2)];[zeros(2), eye(2)]];

% Definitions

xs.MPC2.AA = [xs.model.Ad2 ; xs.model.Ad2^2 ; xs.model.Ad2^3];
xs.MPC2.BB = [[xs.model.Bd2, zeros(3,4), zeros(3,xs.MPC2.neps)]; [xs.model.Ad2*xs.model.Bd2, xs.model.Bd2, zeros(3,2), zeros(3,xs.MPC2.neps)]; [(xs.model.Ad2^2)*xs.model.Bd2, xs.model.Ad2*xs.model.Bd2, xs.model.Bd2, zeros(3,xs.MPC2.neps)]];

xs.MPC2.Gvsws = [[1,0];[-1,0];[0,1];[0,-1]];
xs.MPC2.hvsws = [xs.model.max.Vs;-xs.model.min.Vs;xs.model.max.ws;-xs.model.min.ws];

% Cost Function

xs.MPC2.Qh = blkdiag(kron(eye(xs.MPC2.N-1),xs.MPC2.Q),xs.MPC2.S);
xs.MPC2.Rh = blkdiag(kron(eye(xs.MPC2.N),xs.MPC2.R),xs.MPC2.Qeps);

xs.MPC2.H = 2*(xs.MPC2.BB'*xs.MPC2.Qh*xs.MPC2.BB + xs.MPC2.Rh);

% Inequality constraints Aineq*U <= bineq

xs.MPC2.Aineq = [kron(eye(xs.MPC2.N),xs.MPC2.Gvsws), -kron(ones(xs.MPC2.N,1),xs.MPC2.Gvsws)];

% Save MPC2 in sub structure

xmpc2 = xs.MPC2;

%% OBS1 Tuning

xs.OBS1.Ax = [[xs.model.Ad1, xs.model.Bd1*eye(2)];[zeros(2,4), eye(2)]];
xs.OBS1.Bx = [xs.model.Bd1; zeros(2)];
xs.OBS1.Px = [xs.model.Bod1; zeros(2)];
xs.OBS1.Cx = [xs.model.C1s, zeros(2)];

% Normal observer

xs.OBS1.Q = 1e2*xs.model.Bd1*xs.model.Bd1';
xs.OBS1.R = 1e4*eye(2);
[xs.OBS1.L,xs.OBS1.S] = dlqr(xs.model.Ad1',xs.model.C1s',xs.OBS1.Q,xs.OBS1.R);
xs.OBS1.L = xs.OBS1.L';

xs.OBS1.Ao = xs.model.Ad1 - xs.OBS1.L*xs.model.C1s*xs.model.Ad1;
xs.OBS1.Bo = [xs.model.Bd1,xs.model.Bod1] - xs.OBS1.L*xs.model.C1s*[xs.model.Bd1,xs.model.Bod1];

% Extended observer

xs.OBS1.Qx = blkdiag(1e2*xs.model.Bd1*xs.model.Bd1',1e0*eye(2));
xs.OBS1.Rx = 1e4*eye(2);
[xs.OBS1.Lx,xs.OBS1.Sx] = dlqr(xs.OBS1.Ax',xs.OBS1.Cx',xs.OBS1.Qx,xs.OBS1.Rx);
xs.OBS1.Lx = xs.OBS1.Lx';

xs.OBS1.Aox = xs.OBS1.Ax - xs.OBS1.Lx*xs.OBS1.Cx*xs.OBS1.Ax;
xs.OBS1.Box = [xs.OBS1.Bx,xs.OBS1.Px] - xs.OBS1.Lx*xs.OBS1.Cx*[xs.OBS1.Bx,xs.OBS1.Px];


%% OBS2 Tuning

xs.OBS2.Ax = [[xs.model.Ad2, xs.model.Bd2*eye(2)];[zeros(2,3), eye(2)]];
xs.OBS2.Bx = [xs.model.Bd2; zeros(2)];
xs.OBS2.Cx = [xs.model.C2s, zeros(2)];

% Normal observer

xs.OBS2.Q = xs.model.Bd2*xs.model.Bd2';
xs.OBS2.R = 5e-2*eye(2);
[xs.OBS2.L,xs.OBS2.S] = dlqr(xs.model.Ad2',xs.model.C2s',xs.OBS2.Q,xs.OBS2.R);
xs.OBS2.L = xs.OBS2.L';

xs.OBS2.Ao = xs.model.Ad2 - xs.OBS2.L*xs.model.C2s*xs.model.Ad2;
xs.OBS2.Bo = [xs.model.Bd2,xs.model.Bod2] - xs.OBS2.L*xs.model.C2s*[xs.model.Bd2,xs.model.Bod2];

% Extended observer

xs.OBS2.Qx = blkdiag(xs.model.Bd2*xs.model.Bd2',2e-4*eye(2));
xs.OBS2.Rx = 1e-3*eye(2);
[xs.OBS2.Lx,xs.OBS2.Sx] = dlqr(xs.OBS2.Ax',xs.OBS2.Cx',xs.OBS2.Qx,xs.OBS2.Rx);
xs.OBS2.Lx = xs.OBS2.Lx';

%% SAT1 Parameters

[xsat1.Hif, xsat1.hif] = circle2poly(xs.model.max.vc_alfabeta , xs.MPC1.Lvc, false);

%% SAT2 Parameters

[xsat2.Hif, xsat2.hif] = circle2poly(xs.model.max.if, xs.MPC1.Lif, false);

%% Outer Loop SG2 Tuning

xs.SG2.Lx = 12;
xs.SG2.rhox = 1e-6;

[xs.SG2.fx, xs.SG2.hx] = circle2poly(xs.model.max.ig,xs.SG2.Lx,false);
xs.SG2.Hx = [xs.SG2.fx , zeros(xs.SG2.Lx,1)];

xs.SG2.bx = xs.model.Bd2;
xs.SG2.Gx = xs.SG2.Hx*xs.SG2.bx;

%% Inner Loop Projection Block

xs.Proj1.Hvc = xs.MPC1.Hvc;
xs.Proj1.hvc = xs.MPC1.hvc;
xs.Proj1.Lvc = xs.MPC1.Lvc;
xs.Proj1.Hif = xs.MPC1.Hif;
xs.Proj1.hif = xs.MPC1.hif;
xs.Proj1.Ad1 = xs.model.Ad1;
xs.Proj1.Bd1 = xs.model.Bd1;
xs.Proj1.Bod1 = xs.model.Bod1;
xs.Proj1.Cif = xs.MPC1.Cif;
xs.Proj1.H = 2*blkdiag(eye(2),xs.MPC1.Qeps(1,1));
xproj1 = xs.Proj1;


