function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
[m, n] = size(X); % number of training examples
% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.


% with for loop


for i = 1:m

    h_x_Q = 0;

    for j = 1:n

        h_x_Q = h_x_Q + (X(i, j) * theta(j));

    end

    J = J + ((h_x_Q - y(i)) ^ 2) * 1/(2 * m);

end


% vectorized

%h_x_Q = X * theta;
%J = sum(((h_x_Q - y) .^ 2)) / (2 * m);


% =========================================================================

end
