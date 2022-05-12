%% Inlab 7 Cole Bardin
%% Question 1
clc, clear, close all
A = [5, -5; -5, 5];
v1 = [1;1];
v2 = [1;-1];

syms l;

Al = A - l*eye(2);
dAl = det(Al);
solve(dAl, l)

V = [v1, v2]
D = [0, 0, 0 10];

det(V)
inv(V)

[1,1;1,-1]*[0,0;0,100000]
[0, 1000000; 0 -1000000]*[0.5,0.5;0.5,-0.5]

%% Problem 2
clc, clear, close all

syms a b l
A = [5, -5; a, b];
v1 = [1;1];
v2 = [1;-1];

Al = A-l*eye(2);
dAl = det(Al);
ls = solve(dAl, l);

%% Problem 3
clear, clc, close all
n = 8; % size of magic matrix
M = magic(n);
[v, d] = eig(M); % eigenvectors and eigenvalues
max = max(d);
max1 = max(1);
n;
n*n;
0.5*n*(n*n+1);
0.5*n*(n+1);

v
d