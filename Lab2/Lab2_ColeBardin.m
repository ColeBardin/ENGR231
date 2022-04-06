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

% 3a)
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
if isequal(AcB, z)
    disp("A Commutes with B")
else
    disp("A does not Commute with B")
end

% Display results of A commute C
if isequal(AcC, z)
    disp("A Commutes with C")
else
    disp("A does not Commute with C")
end

% Display results of A commute D
if isequal(AcD, z)
    disp("A Commutes with D")
else
    disp("A does not Commute with D")
end

% 3b
% Declare symbols a b c d
syms a b c d
Bsym = [a, b; c, d]; % Make matrix with symbols

AmB = ( A*Bsym - Bsym*A ) * 0.5 % Commute A and Bsym
% Commutations are scaled by a factor of 1/2 to simplify

% 3c
F = [1, 2; -2, 1]; % F matrix
FmB = ( F*Bsym - Bsym*F ) * 0.5 % Commute G and Bsym

%% Question 4: Commuting Pairs of Matrices

clc % Clear the Command Window
count = 0; % Make count variable equal to 0
rng(2020) % Set random dumber generation to seed 2020

for i=1:1000 % Iterate 1000 times
    % Generate two random 2x2 matrices with values from -5 to 5
    A = randi([-5 5], 2);
    B = randi([-5 5], 2);

    % Check if A and B commute
    if isequal(A*B, B*A)
        count = count + 1;
    end
end

% Print number of commuting pairs
fprintf('4. The number of commuting pairs is %d\n', count)

%% Question 5: Trace of a matrix product AB

clc % Clear the command window

% 5a
A = magic(3);
TrA = trace(A);
fprintf('Trace(magic(3)) = %d\n', TrA)

% 5b
count_tr = 0;
count_tr_p = 0;
tolerance = 1e-10;
for i=1:10000 % Iterate 10000 times
    % Generate two random 2x2 matrices with values from -5 to 5
    A = randi([-5 5], 2);
    B = randi([-5 5], 2);

    % Check if Tr(AB) = Tr(BA)
    if abs(trace(A*B)-trace(B*A)) < tolerance
        count_tr = count_tr + 1;
    end
    % Check if Tr(AB) = Tr(A)*Tr(B)
    if abs(trace(A*B) - (trace(A)*trace(B))) < tolerance
        count_tr_p = count_tr_p + 1;
    end
end
% Print results
fprintf('5. The number of pairs satisfying Tr(AB) = Tr(BA) is %d\n', count_tr)
fprintf('5. The number of pairs satisfying Tr(AB) = Tr(A)*Tr(B) is %d\n', count_tr_p)

%% Question 6: Determinant of a matric product AB

clc % Clear the command window
count = 0;
tolerance = 1e-10;
for i=1:10000 % Iterate 10000 times
    % Generate two random 2x2 matrices with values from -5 to 5
    A = randi([-5 5], 2);
    B = randi([-5 5], 2);

    % Check if det(A*B) = det(A)*det(B)
    if abs(det(A*B)-det(A)*det(B)) < tolerance
        count = count +1;
    end
end
% Print results
fprintf('5. The number of pairs satisfying det(AB) = det(A)*det(B) is %d\n', count)

%% Upgraded Challenge: Commuting pairs of 3x3 Matrices
clc % Clear the Command Window
count = 0; % Make count variable equal to 0
%rng(2020) % Set random dumber generation to seed 2020

for i=1:10000 % Iterate 10000 times
    % Generate two random 3x3 matrices with values from -5 to 5
    A = randi([-5 5], 3);
    B = randi([-5 5], 3);

    % Check if A and B commute
    if isequal(A*B, B*A)
        count = count + 1;
    end
end

% Print number of commuting pairs
fprintf('4. The number of commuting pairs is %d\n', count)
% Never got even 1 commuting pair! Even with 10,000 iterations at a time