function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
[m, n] = size(X);  % number of training examples
J_history = zeros(num_iters, 1);
temp_theta = zeros(n);

for iter = 1:num_iters

    for j = 1:n
        temp_theta(j) = theta(j) - alpha/m * (X * theta - y)' * X(:, j);    
    end
    
    for k = 1:n
        theta(k) = temp_theta(k);
    end


    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %











    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
