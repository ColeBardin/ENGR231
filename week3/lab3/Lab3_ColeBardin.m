%% Lab 3 by Cole Bardin     Section: 62
%% Systems of Linear Equations: Solutions and Visualization
%% Part A
%% Question 1: fprintf()
clc
% Set up A and b matrices
A = [1, 2, -3; 2, 1, -3];
b = [2; -2];
% Make augmented matrix
AM = [A, b];
% Print the size of the augmented matrix
fprintf("The size of the augmented matrix is: %dx%d\n", size(AM))
%% Question 2: rref()
clc
% Set up the A and b matrices
A = [1, 2, -3; 2, 1, -3];
b = [2; -2];
% Make the augmented matrix
AM = [A, b];
% Solve for rref of the augmented matrix
RAM = rref(AM);
% Display the RAM
disp("RAM =")
disp(RAM)
%% Question 3: Find the Pivots Programmatically
clc
% Set up the A and b matrices
A = [1, 2, -3; 2, 1, -3];
b = [2; -2];
% Make the augmented matrix
AM = [A, b];
% Solve for rref of the augmented matrix
RAM = rref(AM);
pivot_for_row1 = find(RAM(1,:), 1);
pivot_for_row2 = find(RAM(2,:), 1);
% Display results
fprintf("Pivot for row 1 is in column %d\nPivot for row 2 is in column %d\n", pivot_for_row1, pivot_for_row2)
%% Question 4: Write the solutions manually
clc
%{
    The basic variables are: x1 and x2
    The free variable is: x3
    The solution can be writte: x1=x3-2, x2=x3+2, x3=x3, where x3 is free
%}
%% Part B
%% Questions 5-6: 3D-Plot of the solutions


