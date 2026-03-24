tic
W = 15;
fr_width = 11;
data_in =  readmatrix("data_in2.csv");
csv_file_out = ("data_out_hw2.csv");
ndata = length(data_in);
salidas = sim('cosim_der2.slx');
writematrix(single([salidas.out1(3:end) salidas.out2(3:end)]), csv_file_out);
toc