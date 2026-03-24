h5_file = "float_model_matlab.h5";
DNN =  init_net_floatL4(h5_file);
csv_file_out = ("data_out_floatDNN.csv");
data_in =  readmatrix("data_in.csv");
data_in = data_in';
%csv_file_out = ("data_out_floatDNN.csv");
%ndata = length(data_in);
results = eval_net_floatL4(data_in,DNN)';

writematrix(results, csv_file_out);