% Randomize igdq reference

% Fix references to zero (default)

xs.sim.vsdr.Tstep = xs.sim.Tf3*( (2/4)*rand() +1/4 ); % Tstep = Tf*[1/4, 3/4]
xs.sim.vsdr.X0 = xs.model.max.Vs*rand(); % vsdr0 = [igmin,igmax]
xs.sim.vsdr.XF = xs.model.max.Vs*rand(); % vsdrF = [igmin,igmax]

xs.sim.igdr.Tstep = 0;
xs.sim.igdr.X0 = 0;
xs.sim.igdr.XF = 0;

xs.sim.igqr.Tstep = 0;
xs.sim.igqr.X0 = 0;
xs.sim.igqr.XF = 0;

xs.sim.bkr.Tstep = 0;
xs.sim.bkr.X0 = 1;
xs.sim.bkr.XF = 1;

xs.sim.thetag0 = 0*(2*rand() - 1)*pi/180;

% Randomize vsd reference (vsq = 0)

% get three random values for the step time using xs.sim.Tf3*( (3/5)*rand() +1/5 ) and assign them to Tstep1, Tstep2, Tstep3 in increasing order
    
xs.sim.vsdr.rnd_Tstep = sort(xs.sim.Tf3*( (3/5)*rand(6,1) +1/5 ));
xs.sim.vsdr.Tstep1 = xs.sim.vsdr.rnd_Tstep(1);
xs.sim.vsdr.Tstep2 = xs.sim.vsdr.rnd_Tstep(2);
xs.sim.vsdr.Tstep3 = xs.sim.vsdr.rnd_Tstep(3);
xs.sim.vsdr.Tstep4 = xs.sim.vsdr.rnd_Tstep(4);
xs.sim.vsdr.Tstep5 = xs.sim.vsdr.rnd_Tstep(5);
xs.sim.vsdr.Tstep6 = xs.sim.vsdr.rnd_Tstep(6);
xs.sim.vsdr.X1 = xs.model.min.Vs + (xs.model.max.Vs - xs.model.min.Vs) * rand(); % vsdr0 = [Vsmin, Vsmax]
xs.sim.vsdr.X2 = xs.model.min.Vs + (xs.model.max.Vs - xs.model.min.Vs) * rand(); % vsdrF = [Vsmin, Vsmax]
xs.sim.vsdr.X3 = xs.model.min.Vs + (xs.model.max.Vs - xs.model.min.Vs) * rand(); % vsdrF = [Vsmin, Vsmax]
xs.sim.vsdr.X4 = xs.model.min.Vs + (xs.model.max.Vs - xs.model.min.Vs) * rand(); % vsdrF = [Vsmin, Vsmax]
xs.sim.vsdr.X5 = xs.model.min.Vs + (xs.model.max.Vs - xs.model.min.Vs) * rand(); % vsdrF = [Vsmin, Vsmax]
xs.sim.vsdr.X6 = xs.model.min.Vs + (xs.model.max.Vs - xs.model.min.Vs) * rand(); % vsdrF = [Vsmin, Vsmax]
xs.sim.vsdr.X7 = xs.model.min.Vs + (xs.model.max.Vs - xs.model.min.Vs) * rand(); % vsdrF = [Vsmin, Vsmax]

   
xs.sim.wsr.rnd_Tstep = sort(xs.sim.Tf3*( (3/5)*rand(6,1) +1/5 ));
xs.sim.wsr.Tstep1 = xs.sim.wsr.rnd_Tstep(1);
xs.sim.wsr.Tstep2 = xs.sim.wsr.rnd_Tstep(2);
xs.sim.wsr.Tstep3 = xs.sim.wsr.rnd_Tstep(3);
xs.sim.wsr.Tstep4 = xs.sim.wsr.rnd_Tstep(4);
xs.sim.wsr.Tstep5 = xs.sim.wsr.rnd_Tstep(5);
xs.sim.wsr.Tstep6 = xs.sim.wsr.rnd_Tstep(6);
xs.sim.wsr.X1 = xs.model.wg*( 2*(rand() - 0.5)*0.005 + 1 );
xs.sim.wsr.X2 = xs.model.wg*( 2*(rand() - 0.5)*0.005 + 1 );
xs.sim.wsr.X3 = xs.model.wg*( 2*(rand() - 0.5)*0.005 + 1 );
xs.sim.wsr.X4 = xs.model.wg*( 2*(rand() - 0.5)*0.005 + 1 );
xs.sim.wsr.X5 = xs.model.wg*( 2*(rand() - 0.5)*0.005 + 1 );
xs.sim.wsr.X6 = xs.model.wg*( 2*(rand() - 0.5)*0.005 + 1 );
xs.sim.wsr.X7 = xs.model.wg*( 2*(rand() - 0.5)*0.005 + 1 );


if xs.sim.Ref_Rand == 1

    % Randomize igdq reference

    xs.sim.igdr.Tstep = xs.sim.Tf3*( (2/4)*rand() +1/4 ); % Tstep = Tf*[1/4, 3/4]
    xs.sim.igdr.X0 = 1.5*(2*xs.model.max.if*rand() - xs.model.max.if); % igdr0 = [igmin,igmax]
    xs.sim.igdr.XF = 1.5*(2*xs.model.max.if*rand() - xs.model.max.if); % igqrF = [igmin,igmax]

    xs.sim.igqr.Tstep = xs.sim.Tf3*( (2/4)*rand() +1/4 ); % Tstep = Tf*[1/4, 3/4]
    xs.sim.igqr.X0 = 1.5*(2*xs.model.max.if*rand() - xs.model.max.if); % igqr0 = [igmin,igmax]
    xs.sim.igqr.XF = 1.5*(2*xs.model.max.if*rand() - xs.model.max.if); % igqrF = [igmin,igmax]

    

end

% Randomize parameters Rg, Lg, wg, Vg

if xs.sim.Param_Rand == 1

    % Randomize Rg, Lg

    xs.sim.Rg = xs.model.Rg*( 2*(rand() - 0.5)*0.15 + 1 ); % Rg = Rgnom +- Rgnom*15%
    xs.sim.Lg = xs.model.Lg*( 2*(rand() - 0.5)*0.15 + 1 ); % Lg = Lgnom +- Lgnom*15%

    % Randomize wg, Vg


    xs.sim.wg = xs.model.wg*( 2*(rand() - 0.5)*0.015 + 1 ); % wg = wgnom +- wgnom*1%
    xs.sim.Vg = xs.model.Vg*( 2*(rand() - 0.5)*0.06 + 1 ); % Vg = Vgnom +- Vgnom*5%

    % Randomize Ro between xs.model.max.vc/0.05 and xs.model.max.vc/3

    xs.sim.Ro = (xs.model.max.vc/3 - xs.model.max.vc/0.05)*rand() + xs.model.max.vc/0.05;
end

% Randomize breaker (bkr)

if xs.sim.BKR_Rand == 1

    xs.sim.bkr.Tstep = xs.sim.Tf3*( (2/4)*rand() +1/4 );

    % Randomize initial and final conditions as 0 or 1, 0 is chosen with 30% probability and 1 with 70% probability
    xs.sim.bkr.X0 = double(rand() > 0.25);
    xs.sim.bkr.XF = double(rand() > 0.25);
end

% Randomize initial action wcd, wcq and initial conditions X0abc

if xs.sim.X0_Rand == 1

    xs.sim.thetag0 = 180*(2*rand() - 1)*pi/180;

    % while true
    %     xs.sim.thetag0 = 30*(2*rand() - 1)*pi/180; % thetag0 = [-45,45] deg
    % 
    %     xs.sim.Q.vcd = 0.5*(xs.model.max.vc_alfabeta *rand() ); % vcdQ = [vcdmin,vcdmax]
    %     xs.sim.Q.vcq = 0.01*(2*xs.model.max.vc_alfabeta *rand() - xs.model.max.vc_alfabeta ); % vcqQ = [vcqmin,vcqmax]
    %     status_vc1 = sqrt(xs.sim.Q.vcd^2 + xs.sim.Q.vcq^2) <= xs.model.max.vc;
    %     xs.sim.vcdq_sat0 = SAT_f([xs.sim.Q.vcd ; xs.sim.Q.vcq],xsat1);
    %     Qpoint_vals_random;
    % 
    %     % chek if the magnitude of ifdq is within a circle of radius 1.5*xs.model.max.if
    %     if sqrt(xs.sim.Q.ifd^2 + xs.sim.Q.ifq^2) <= (1.2*xs.model.max.if)
    %             status_vc2 = sqrt(xs.sim.Q.vcd^2 + xs.sim.Q.vcq^2) <= xs.model.max.vc;
    %             xs.sim.X0abc.if = xs.model.Tdq2abc0*[xs.sim.Q.ifd; xs.sim.Q.ifq; 0];
    %             xs.sim.X0abc.vs = xs.model.Tdq2abc0*[xs.sim.Q.vsd; xs.sim.Q.vsq; 0];
    %             xs.sim.X0abc.ig = xs.model.Tdq2abc0*[xs.sim.Q.igd; xs.sim.Q.igq; 0];
    % 
    %         break;
    %     end
    % 
    % end

end
