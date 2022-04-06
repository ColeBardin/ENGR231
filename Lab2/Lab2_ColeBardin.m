%% Lab2 by Cole Bardin  Section: 62
%% Matrix Exploration
%% Question 1: Solve a Linear System by Row Reducing the Augmented Matrix

A = [1, 1, 1; 1, 2, -3; 1, 1, -2]; % Create coefficient matrix 
b = [18; 0; 0]; % b matrix
AM = [A, b]; % Augmented matrix

RAM = rref(AM); % Fully reduce matrix to RREF

x = RAM(:,end); % Last column is the solution set to the system
disp(x); % Display the solution set