%% Week 6 InLab
%% Question 1
clc, clear, close all
A = [1,0,0;0,1,0;0,0,1;1,1,1];
x = [1;2;-3];

Ax = A*x
%% Question 2
clc, clear, close all
A = [1,0,0;0,1,0;0,0,1;1,1,1];
b = [1;1;1];

Ab = A*b
%% Question 3
clc, clear, close all

syms a b c d;
A11 = [0,1,0,0;1,0,0,0;0,0,0,1;0,0,1,0];
A12 = [a,b;b,a;c,d;d,c];
A22 = [0,-1;-1,0];
A = [0,1,0,0,a,b;1,0,0,0,b,a;0,0,0,1,c,d;0,0,1,0,d,c;0,0,0,0,0,-1;0,0,0,0,-1,0]


inv(A11);
inv(A22);

B12 = -1*A11*A12*A22

B = inv(A)


