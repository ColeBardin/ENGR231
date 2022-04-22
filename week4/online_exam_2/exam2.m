%% Online Exam 2
%% Question 1
clc, clear
A = [1, 0, -1; 4, -4, 3];
B = [6, -6, 1; 2, -5, -2];
C = [1, 3; -1, 1];
D = [3, 4; -1, 4];
E = [-6; 3];

A+3*B

2*C-4*E

D*B

% E*B Undefined

%% Question 2
clc, clear
A = [0, -2, -1; 6, 0, 0; -1, 1, 1];
adjoint(A)
det(A)
inv(A)

%% Question 3
clc, clear
A = [5, 5; 2, 5];
AI = [A, eye(2)];
det(A)
adjoint(A)
rref(AI)

%% Question 5
clc, clear
A = [8, 3; 5, 7];
b = [-5;-80];
da = det(A);

A1 = A;
A1(:,1) = b;
det(A1)/da

A2 = A;
A2(:,2) = b;
det(A2)/da

rref([A,b])

%% Question 7
clc, clear
A = [1, 5, -7; -1, -4, -5; -2, -8, 7];

A1 = A;
A1(2,:) = A1(2,:) + A1(1,:)

A2 = A1;
A2(3,:) = A2(3,:) + 2*A2(1,:) - 2*A2(2,:)

det(A)

%% Question 8
clc, clear
A = [1, 4, 0, -3; 4, 16, 0, -12];
Az = [A,[0;0]];

rref(Az)

%% Quetion 9
clc, clear
A = [4, 2; 6, 4];
det(A)
A2 = A;
A2(2,:) = A2(2,:) + 10*A2(1,:);
det(A2)

%% Question 10
clc, clear
A = [3, 0, 3; 2, 4, 2; 0, 4, -1];
det(A)
