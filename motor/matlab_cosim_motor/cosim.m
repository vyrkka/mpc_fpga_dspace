tic
W = 21;
fr_width = 14;
motor_in =  readmatrix("motor_in.csv");
csv_file_out = ("motor_out_hw.csv");
ndata = length(motor_in);
salidas = sim('cosim_motor.slx');
writematrix(single(salidas.out1(3:end)), csv_file_out);
toc