function J = costFunctionJ(X, y, theta)

% X is the "design matrix" containing our training examples.
% y is the class lables

m = size(X,1);                  % number of traning examples
predictions = X*theta;          % predictions of hypothesis on all m examples
sqrErrors = (predictions-y).^2; % squared errors

J = 1/(2*m) * sum(sqrErrors);
