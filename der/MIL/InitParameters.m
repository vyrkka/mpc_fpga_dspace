%% Model Parameters (nominal)

xs.model.Ts = 200e-6;

xs.model.vdc = 300;
xs.model.Rf = 0.035;
xs.model.Lf = 5e-3;
xs.model.Cf = 12e-6;
xs.model.Rg = 0.835;
xs.model.Lg = 4e-3; % 4e-3
xs.model.wg = 2*pi*50; 
xs.model.Vg = xs.model.vdc*(sqrt(3)/3)/1.15;

% Max-Min Values (magnitude)

xs.model.max.if = 6; % 5
xs.model.max.ig = xs.model.max.if;
xs.model.max.vc = (sqrt(3)/3)*xs.model.vdc; % 95%
xs.model.max.vc_alfabeta = 0.92*(2/3)*xs.model.vdc; %0.92*(2/3)*xs.model.vdc
xs.model.max.Vs = xs.model.max.vc_alfabeta; % 0.9*xs.model.max.vc
xs.model.max.ws = 2*pi*51;

xs.model.min.if = -xs.model.max.if;
xs.model.min.ig = 0;
xs.model.min.vc = -xs.model.max.vc;
xs.model.min.Vs = 0;
xs.model.min.ws = 2*pi*49;

% Q values from Wolfram Mathematica

Qpoint_vals;

%% Simulation Parameters (real)

xs.sim.Tf1 = 0.1-xs.model.Ts;
xs.sim.Tf2 = 0.9-xs.model.Ts;
xs.sim.Tf3 = 0.4-xs.model.Ts; % for data generation

xs.sim.vdc = xs.model.vdc;
xs.sim.Rf = xs.model.Rf;
xs.sim.Lf = xs.model.Lf;
xs.sim.Cf = xs.model.Cf;
xs.sim.Rg = xs.model.Rg;
xs.sim.Lg = xs.model.Lg;
xs.sim.wg = xs.model.wg;
xs.sim.Vg = xs.model.Vg;
xs.sim.Ro = xs.model.max.vc/0.05; % models extra resistance (parallel to Cf in grid side)

% Initial Conditions

xs.sim.Q.vcd = xs.model.Q.vcd;
xs.sim.Q.vcq = xs.model.Q.vcq;
xs.sim.Q.vgd = xs.model.Q.vgd;
xs.sim.Q.vgq = xs.model.Q.vgq;
xs.sim.Q.ws = xs.model.Q.ws;
xs.sim.Q.ifd = xs.model.Q.ifd;
xs.sim.Q.ifq = xs.model.Q.ifq;
xs.sim.Q.vsd = xs.model.Q.vsd;
xs.sim.Q.vsq = xs.model.Q.vsq;
xs.sim.Q.igd = xs.model.Q.igd;
xs.sim.Q.igq = xs.model.Q.igq;

xs.sim.thetag0 = 0*pi/180;

xs.model.Tdq2abc0 = [[cos(0), -sin(0), 1];[cos(-2*pi/3), -sin(-2*pi/3), 1];[cos(2*pi/3), -sin(2*pi/3), 1]];
xs.sim.X0abc.if = xs.model.Tdq2abc0*[xs.sim.Q.ifd; xs.sim.Q.ifq; 0];
xs.sim.X0abc.vs = xs.model.Tdq2abc0*[xs.sim.Q.vsd; xs.sim.Q.vsq; 0];
xs.sim.X0abc.ig = xs.model.Tdq2abc0*[xs.sim.Q.igd; xs.sim.Q.igq; 0];

%% Inner Loop Linearized Model

xs.model.nx1 = 4;
xs.model.nu1 = 2;
xs.model.A1 = [[-(xs.model.Rf/xs.model.Lf), xs.model.wg, -1/xs.model.Lf, 0];
    [-xs.model.wg, -(xs.model.Rf/xs.model.Lf), 0, -1/xs.model.Lf];
    [1/xs.model.Cf, 0, 0, xs.model.wg];
    [0, 1/xs.model.Cf, -xs.model.wg, 0]];

xs.model.B1 = [[1/xs.model.Lf, 0];[0, 1/xs.model.Lf];[0, 0];[0, 0]];
xs.model.Bo1 = [[0, 0];[0, 0];[-1/xs.model.Cf, 0];[0, -1/xs.model.Cf]];
xs.model.C1 = eye(4);
xs.model.C1s = [zeros(2),eye(2)];
xs.model.D1 = zeros(4);

sys1 = ss(xs.model.A1,[xs.model.B1,xs.model.Bo1],xs.model.C1,xs.model.D1);
sys1_sim = ss(xs.model.A1,xs.model.B1,xs.model.C1s,zeros(2));

sysd1 = c2d(sys1,xs.model.Ts);
sysd1_sim = c2d(sys1_sim,xs.model.Ts);

[xs.model.Ad1,xs.model.Bd1,xs.model.Cd1,xs.model.Dd1] = ssdata(sysd1);
xs.model.Bod1 = xs.model.Bd1(:,3:4);
xs.model.Bd1 = xs.model.Bd1(:,1:2);

%% Outer Loop Linearized Model

xs.model.nx2 = 3;
xs.model.nu2 = 2;
xs.model.A2 = [[-(xs.model.Rg/xs.model.Lg), xs.model.wg, 0];
    [-xs.model.wg, -(xs.model.Rg/xs.model.Lg), -(xs.model.Vg/xs.model.Lg)];
    [0, 0, 0]];

xs.model.B2 = [[1/xs.model.Lg, 0];[0, 0];[0, -1]];
xs.model.Bo2 = [[-1/xs.model.Lg, 0];[0, 0];[0, 1]];
xs.model.C2 = eye(3);
xs.model.C2s = [eye(2),zeros(2,1)];
xs.model.D2 = zeros(3,4);

sys2 = ss(xs.model.A2,[xs.model.B2,xs.model.Bo2],xs.model.C2,xs.model.D2);
sysd2 = c2d(sys2,xs.model.Ts);
[xs.model.Ad2,xs.model.Bd2,xs.model.Cd2,xs.model.Dd2] = ssdata(sysd2);
xs.model.Bod2 = xs.model.Bd2(:,3:4);
xs.model.Bd2 = xs.model.Bd2(:,1:2);


%% Complete Model (1-phase)

xs.model.Ap = [[(-xs.sim.Rf/xs.sim.Lf),-1/xs.sim.Lf,0];[1/xs.sim.Cf,0,-1/xs.sim.Cf];[0,1/xs.sim.Lg,(-xs.sim.Rg/xs.sim.Lg)]];
xs.model.Bp = [[1/xs.sim.Lf,0];[0,0];[0,-1/xs.sim.Lg]];
xs.model.Cp = eye(3);
xs.model.Dp = zeros(3,2);
sysp = ss(xs.model.Ap,xs.model.Bp,xs.model.Cp,xs.model.Dp);
sysdp = c2d(sysp,xs.model.Ts);
[xs.model.Adp,xs.model.Bdp,xs.model.Cdp,xs.model.Ddp] = ssdata(sysdp);

