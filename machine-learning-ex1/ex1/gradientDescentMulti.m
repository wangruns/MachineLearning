function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %


%N=size(X,2);
%errorValue=X*theta-y;

%theta(1)=theta(1)-alpha*sum(errorValue.*X(:,1))/m;
%theta(2)=theta(2)-alpha*sum(errorValue.*X(:,2))/m;
%...
%theta(N)=theta(N)-alpha*sum(errorValue.*X(:,N))/m;

%for i =1:N
%	theta(i)=theta(i)-alpha*sum(errorValue.*X(:,i))/m;
%end

theta = theta - alpha / m * X' * (X * theta - y); 

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
