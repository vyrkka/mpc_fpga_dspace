h5_file = "float_motorB_L3M9_pruned_matlab.h5";
DNN =  init_net_floatL3(h5_file);
csv_file_out = ("data_out_motorB_L3_pr.csv");
data_in =  readmatrix("motor_in.csv");
data_in = data_in';
%csv_file_out = ("data_out_floatDNN.csv");
%ndata = length(data_in);
results = eval_net_floatL3(data_in,DNN)';

writematrix(results, csv_file_out);

%data1 = readmatrix('data_out_hw2.csv');
data1 = results;
data2 = readmatrix('motor_out.csv');

% Check that the sizes match
if ~isequal(size(data1), size(data2))
    error('Files do not have the same size.');
end

% Subtract the values
difference = data2 - data1;

% Save the result to a new CSV file
writematrix(difference, 'error_motorB_L3_pr.csv');