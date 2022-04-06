%% Lab2 by Cole Bardin  Section: 62
%% Matrix Exploration
%% Question 1: Solve a Linear System by Row Reducing the Augmented Matrix

A = [1, 1, 1; 1, 2, -3; 1, 1, -2]; % Coefficient matrix 
b = [18; 0; 0]; % b matrix
AM = [A, b]; % Augmented matrix

RAM = rref(AM); % Fully reduce matrix to RREF

x = RAM(:,end); % Last column is the solution set to the system
disp(x); % Display the solution set

%% Question 2: Solve a Linear System with a Free Variable

A = [1, 1, 1; 1, 1, -1; 1, 1, 0]; % Coefficient matrix
b = [4; 0; 2]; % b matrix
AM = [A, b]; % Augmented matrix

RAM = rref(AM); % Fully reduced matrix to RREF
disp(RAM); % Display the RREF matrix

%% Question 3: Matrices in general do not commute

A = [1, 2; 2, 1]; % A matrix for operation

% Test matricies
B = [3, 4; 4, 3];
C = [1, 2; 2, 2];
D = [1, 2; 3, 4];

% 2x2 Array of zeros
z = zeros(2);

AcB = A*B - B*A; % Calculate A Commute B
AcC = A*C - C*A; % Calculate A Commute C
AcD = A*D - D*C; % Calculate A Commute D

% Display results of A commute B
disp("AcB =")
disp(AcB)
if isequal(AcB, z)
    disp("A Commutes with B")
else
    disp("A does not Commute with B")
end

% Display results of A commute C
disp("AcC =")
disp(AcC)
if isequal(AcC, z)
    disp("A Commutes with C")
else
    disp("A does not Commute with C")
end

% Display results of A commute D
disp("AcD =")
disp(AcD)
if isequal(AcD, z)
    disp("A Commutes with D")
else
    disp("A does not Commute with D")
end
