%% Inlb 9
%% Problem 3
clc, clear, close all

x = [0;1;2;3];
y = [3;1;5;15];
N = numel(x);

% Linear fit
D = [ones(N,1), x]; 
D2_L = inv(D'*D)*20

b_L = inv(D'*D)*D'*y

yL = @(t) b_L(1) + b_L(2)*t;
err_L = y-yL(x)

RMSE_L = (dot(err_L,err_L)/N)^0.5

% Quadratic Fit
D = [ones(N,1), x, x.^2];
b_Q = inv(D'*D)*D'*y
yQ = @(t) b_Q(1) + b_Q(2)*t + b_Q(3)*(t).^2;

err_Q = y - yQ(x)
RMSE_Q = (dot(err_Q,err_Q)/N)^0.5