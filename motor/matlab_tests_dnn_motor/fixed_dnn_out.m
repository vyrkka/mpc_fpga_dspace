
W_qt = coder.const(21);
Q_qt = coder.const(7);
wordLength = coder.const(W_qt);
fracLength = coder.const(W_qt-Q_qt);
F_ = coder.const(fimath('OverflowAction', 'Saturate', ... 
   'RoundingMethod', 'Round', ...
   'ProductMode', 'SpecifyPrecision', ...
   'ProductWordLength', wordLength, ...
   'ProductFractionLength', fracLength, ...
   'SumMode', 'SpecifyPrecision', ...
   'SumWordLength', wordLength, ...
   'SumFractionLength', fracLength));

h5_file = "fixed_motorB_L3M9W21Q7_pruned_matlab.h5";
DNN =  init_net_fixedL3(h5_file,W_qt, Q_qt, F_);
csv_file_out = ("data_out_fixed_motor.csv");
data_in =  readmatrix("motor_in.csv");
data_in = data_in';
results = eval_net_fixedL3(data_in,DNN, F_)';

writematrix(results, csv_file_out);

%data1 = readmatrix('data_out_hw2.csv');
data1 = results;
data2 = readmatrix('motor_out_hw.csv');

% Check that the sizes match
%if ~isequal(size(data1), size(data2))
    %error('Files do not have the same size.');
%end

% Subtract the values
difference = data1 - data2;

% Save the result to a new CSV file
writematrix(difference, 'error_motor_W21.csv');

% Plot
figure;
plot(difference, 'o-', 'LineWidth', 1.5, 'MarkerSize', 6);

% Title and labels
title('Output difference between DNN and its hardware description');
xlabel('Index');
ylabel('Difference Value');

% Grid and styling
grid on;
set(gca, 'FontSize', 18); % Adjust font size
