tic
W = 22;
fr_width = 14;
data_in =  readmatrix("data_in1.csv");
csv_file_out = ("data_out_hw1.csv");
ndata = length(data_in);
salidas = sim('cosim_der1.slx');
writematrix(single([salidas.out1(3:end) salidas.out2(3:end)]), csv_file_out);
toc