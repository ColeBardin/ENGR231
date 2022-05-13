%% Online Exam 3
%% Question 10
clc, clear, close all
A = [1, 2, 7, -1; 1, 0, 3, -5; 0, 1, 2, 3; -4, 1, -10, 15]
b = [-5;3;-3;-3]

AM = [A, b];
rref(AM)

%% Question 9
clc, clear, close all
syms I P X C S;
A = [0, I; I, 0];
B = [P, X; C, S];
A*B

%% Question 4
clc, clear
syms l;
A = [10, 5; 5, 10]
Al = A-l*eye(2)
dAl = det(Al)
solve(dAl, l)

%% Question 3
clc, clear
A = [-4, -3; -4, 7];
Al = A - 8*eye(2)
AM = [Al, [0;0]]
rref(AM)

%% Question 2
clc, clear
A = [1, -5, -17; -2, 2, 2];
b = [-2; -4];
AM = [A, b];
rref(AM)

A*[3;1;0]




