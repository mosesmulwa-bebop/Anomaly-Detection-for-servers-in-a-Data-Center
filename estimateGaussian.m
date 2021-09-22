function [mu sigma2] = estimateGaussian(X)
%ESTIMATEGAUSSIAN This function estimates the parameters of a 
%Gaussian distribution using the data in X
%   [mu sigma2] = estimateGaussian(X), 
%   The input X is the dataset with each n-dimensional data point in one row
%   The output is an n-dimensional vector mu, the mean of the data set
%   and the variances sigma^2, an n x 1 vector
% 

% Useful variables
[m, n] = size(X);

% You should return these values correctly
mu = zeros(n, 1);
sigma2 = zeros(n, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the mean of the data and the variances
%               In particular, mu(i) should contain the mean of
%               the data for the i-th feature and sigma2(i)
%               should contain variance of the i-th feature.
%

%%Mean

mean_of_all_feature_columns =mean(X); % 1 * n Vector -- Gives mean of all the columns
mu = mean_of_all_feature_columns'; %get transponse to give n * 1 vectorasd


%%variance
difference = X - mean_of_all_feature_columns; %subtract mean from each term  --- m * n matrix
squared_difference = difference.^2; %element wise squaring of all elements --- m * n matrix
mean_of_squared_difference = mean(squared_difference); %--- 1 * n vector
sigma2 = mean_of_squared_difference'; % ---- n * 1 vector 





% =============================================================


end
