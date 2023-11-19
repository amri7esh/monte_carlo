% Clear Command Window and Workspace
clc;
clear;

% Generate 1000 uniform random variables between 0 and 1
U = rand(1000,1);

% Parameters for Cauchy Distribution
median_cauchy = 0;
scale_cauchy = 0.06 / tan((0.95*pi)/2);

% Simulate Cauchy Distribution Returns
x = median_cauchy + scale_cauchy * tan(pi * (U - 0.5));

% Parameters for Logistic Distribution
median_logistic = 0;
scale_logistic = 0.06 / log(1.95/0.05);

% Simulate Logistic Distribution Returns
y = median_logistic + scale_logistic * log(U ./ (1 - U));

% Number of days
n = 1:1000;

% Calculate total return for Cauchy and Logistic distributions
total_return_x = cumsum(x);
total_return_y = cumsum(y);

% Calculate average return for Cauchy and Logistic distributions
average_return_x = total_return_x ./ (n'); 
average_return_y = total_return_y ./ (n');

% Plotting the Total Return for both distributions
figure;
plot(n, total_return_x, 'r', 'LineWidth', 2);
hold on;
plot(n, total_return_y, 'b', 'LineWidth', 2);
xlabel('Number of Days');
ylabel('Total Return');
title('Total Return for Cauchy and Logistic Distributions');
legend('Cauchy Distribution', 'Logistic Distribution');
hold off;

% Plotting the Average Return for both distributions
figure;
plot(n, average_return_x, 'r', 'LineWidth', 2);
hold on;
plot(n, average_return_y, 'b', 'LineWidth', 2);
xlabel('Number of Days');
ylabel('Average Return');
title('Average Return for Cauchy and Logistic Distributions');
legend('Cauchy Distribution', 'Logistic Distribution');
hold off;
