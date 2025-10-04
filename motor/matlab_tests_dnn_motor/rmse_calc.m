% Load the error (difference) file
errors = readmatrix('error_motorB_L3.csv');
errors_pr = readmatrix('error_motorB_L3_pr.csv');
% Compute RMSE for each column
rmse_col1 = sqrt(mean(errors.^2));
%rmse_col2 = sqrt(mean(errors(:,2).^2));
rmse_col1_pr = sqrt(mean(errors_pr.^2));

% Compute maximum squared error for each column
max_sqerr_col1 = max(errors.^2);
%max_sqerr_col2 = max(errors(:,2).^2);

% Display results
fprintf('RMSE Column 1: %.10f\n', rmse_col1);
fprintf('RMSE Column 1: %.10f\n', rmse_col1_pr);
%fprintf('RMSE Column 2: %.10f\n', rmse_col2);
fprintf('Max Squared Error Column 1: %.10f\n', max_sqerr_col1);
%fprintf('Max Squared Error Column 2: %.10f\n', max_sqerr_col2);

% Compute squared errors
squared_errors = errors.^2;
squared_errors_pr = errors_pr.^2;
% Plot squared errors
figure;
plot(squared_errors(:,1), '-o');
hold on;
plot(squared_errors_pr(:,1), '-x');
hold off;

title('Squared Errors', FontSize=24);
xlabel('Index', FontSize=24);
ylabel('Squared Error', FontSize=24);
legend('Not pruned', 'Pruned', FontSize=20);
grid on;
