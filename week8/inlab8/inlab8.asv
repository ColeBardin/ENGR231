%% Inlab 8
%% Question 1
clc, clear, close all
a = [-3, -2, 1, 1, 1];
b = [2; 0; 2; 2; 2];
c = [0; 0; 4; 0; 0];
d = [2; 3; 1; -1; 1];

%% Question 2
clc, clear, close all
x = [-5; -2; -1; 1; 2; 5];
y = [-28; -4; 0; 2; 0; -18];

N = numel(x);

one = ones(N,1);

Dl = [one, x]

b = inv(Dl'*Dl)*Dl'*y

yest = [-13;-10;-9;-7;-6;-3]

err = y-yest

k = (err'*err)/N

Dp = [one, x, x.*x]