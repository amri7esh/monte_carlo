% PART 1: Uniform to Cauchy Sampling for Order Statistics
% This section demonstrates the estimation of order statistics of a Cauchy
% distribution by transforming uniformly distributed samples and then sorting.
% It highlights the traditional method of generating and sorting a full set of samples.

clc;  % Clear the command window
clear;  % Clear all variables from the workspace

n = 100;  % Size of each sample
num_samples = 1000;  % Number of samples to generate

tic;  % Start timing the operation

% Generate 1000 realizations of X1, X2, ..., X100
% Each Xi is from a Cauchy distribution, transformed from the uniform distribution
X = tan(pi*(rand(n, num_samples) - 1/2));

% Sort the realizations to obtain the order statistics
X_sorted = sort(X, 1);

% Indices of the order statistics to be estimated
i = [30, 50, 70];

% Estimate EX(i) for i = 30, 50, 70
% This calculates the mean of the 30th, 50th, and 70th order statistics
EX_est = mean(X_sorted(i,:), 2);

% Stop timing the operation
estimated_time1 = toc;

% Print the estimated values
fprintf('Estimated expected value of X(30) = %f\n', EX_est(1))
fprintf('Estimated expected value of X(50) = %f\n', EX_est(2))
fprintf('Estimated expected value of X(70) = %f\n', EX_est(3))
fprintf('Time to generate using uniform random sampler: %f seconds to generate %d samples.\n', estimated_time1, num_samples);
% End of Part 1

% PART 2: Beta Distribution Sampling for Cauchy Order Statistics
% This section demonstrates a more efficient approach to estimate the same 
% order statistics of a Cauchy distribution. It uses the Beta distribution 
% to directly sample the desired order statistics, followed by a Cauchy transformation.
% This method is computationally more efficient as it avoids generating and sorting 
% a full sample set.

clear;  % Clear all variables from the workspace

% Set sample size
n = 100;
% Set number of samples
num_samples = 1000;

% Indices for which the order statistics are to be estimated
i = [30, 50, 70];

% Start timing the operation
tic;

% Allocate storage for the estimated expected values
X = zeros(1, length(i));

% Generate the samples and estimate expected values
for j = 1:length(i)
    % Generate samples from Beta distribution
    U = betarnd(i(j), n+1-i(j), num_samples, 1);
    % Transform Beta samples to Cauchy distribution and calculate the mean
    X(j) = mean(tan(pi*(U-0.5)));
end

% Stop timing the operation
estimated_time2 = toc;

% Display the estimated expected values
disp(['Estimated expected value of X(30) using Beta Distribution Sampler: ', num2str(X(1))])
disp(['Estimated expected value of X(50) using Beta Distribution Sampler: ', num2str(X(2))])
disp(['Estimated expected value of X(70) using Beta Distribution Sampler: ', num2str(X(3))])

% Print the time taken for the operation
fprintf('Time to generate using beta distribution sampler: %f seconds to generate %d samples.\n', estimated_time2, num_samples);

% End of Part 2