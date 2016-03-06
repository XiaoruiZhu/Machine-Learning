
%% Machine Learning Online Class - Exercise 3 | Part 1: One-vs-all

%  Instructions
%  ------------
% 
%  This file contains code that helps you get started on the
%  linear exercise. You will need to complete the following functions 
%  in this exericse:
%
%     lrCostFunction.m (logistic regression cost function)
%     oneVsAll.m
%     predictOneVsAll.m
%     predict.m
%
%  For this exercise, you will not need to change any code in this file,
%  or any other files other than those mentioned above.
%

%% Initialization

clear ; close all; clc

% Load Training Data
fprintf('Loading and Visualizing Data ...\n')

AMZN = csvread('AMZN.txt');
index = AMZN(:,1); X = AMZN(:, 2:6); y = AMZN(:, 7) + 1;

input_layer_size = size(AMZN,1);
num_labels = 2;

%% =========== Part 1: Loading and Visualizing Data =============
%  We start the exercise by first loading and visualizing the dataset. 
%  You will be working with a dataset that contains handwritten digits.
%

fprintf('\nTraining One-vs-All Logistic Regression...\n')

lambda = 0.6;
[all_theta] = oneVsAll(X, y, num_labels, lambda);

fprintf('Program paused. Press enter to continue.\n');
pause;


%% ================ Part 3: Predict for One-Vs-All ================
%  After ...
pred = predictOneVsAll(all_theta, X);

fprintf('\nTraining Set Accuracy: %f\n', mean(double(pred == y)) * 100);

fprintf('\mTraining One-vs-All LR with different lambda from 0 to 2, and put accuracy one by one \n')

for j = 1:10
  lambda = 0.1 * (j-1);
  [all_theta] = oneVsAll(X, y, num_labels, lambda);
  pred = predictOneVsAll(all_theta, X);
  fprintf('\nLambda is %f. Training Set Accuracy: %f\n', lambda, mean(double(pred == y)) * 100);
end

