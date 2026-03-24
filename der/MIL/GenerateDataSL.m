%% Prepare data
cc;
InitParameters;
InitMPCs

%csv_file1 = "der_data1.csv";
%csv_file2 = "der_data2.csv";

%writematrix(["x11", "x12", "x13", "x14", "dk11", "dk12", "rk1", "cos(theta_c)", "sin(theta_c)", "uk11","uk12"], csv_file1);
%writematrix(["x21", "x22", "x23", "dk21", "dk22", "rk21", "rk22", "uk21","uk22"], csv_file2);

% Number of simulations (each simulation 2000 points)
nsim = 2000;
n = 3000; 

% Initialize parameters
InitMain;

% Initialize the wait bar
h = waitbar(0, 'Running simulations...');

% Find the bar object and change its color
barObject = findall(h, 'Type', 'Patch');
set(barObject, 'FaceColor', [0 0.5 0]); % Set to green, for example


for i = 1:n
    % Update the wait bar
    waitbar(i/n, h, sprintf('Running simulation %d of %d...', i, n));

    % Sim MPC with random parameters
    [xs.sim.Ref_Rand, xs.sim.Param_Rand, xs.sim.BKR_Rand, xs.sim.X0_Rand] = deal(1,1,1,1);
    InitRandomize;
    Run_SIM_MPC;
    
    writematrix([xk1, dk1, rk1, cos(theta_c), sin(theta_c), uk1], csv_file1,'WriteMode','append');
    writematrix([xk2, dk2, rk2, uk2], csv_file2,'WriteMode','append');
end

% Close the wait bar
close(h);