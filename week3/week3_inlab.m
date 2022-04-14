%% Problem 1
clc
A = [1, 2, 0, 2, 0, 1; 0, 0, 1, 1, 0, 4; 0, 0, 0, 0, 1, 5];
b = [6;6;6];
s_A = sym(A);
part = linsolve(s_A,b);

homog = null(s_A)

possilbe_sol = A*[1;1;1;1;1;1]
%% Problem 2
clc
A = [5, 10; 1, 1];
b = [200; 30];
x = linsolve(A, b)
%% Problem 3
clc
A = [1, 1, -3; 2, 0, 1; 1, -4, 0];
b = [-6; 5; -7];
x = [1;2;3];
A*x
%x = linsolve(A,b)

