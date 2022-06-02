%% MATLAB Final Exam by Cole Bardin     Setion 62
%% Part A
%% Question 1
clc, clear
A = [10;-20;10;20;-40;20];
B = [50;40;30;20;10;-150];
C = [10;10;10;20;30;30];
D = [10;10;10;10;6;4];

ANorm = norm(A)
BNorm = norm(B)
CNorm = norm(C)
DNorm = norm(D)

%% Quesion 2
clc, clear
A = [6;0;6;0];
B = [12;0;0;0];
C = [6;6;6;6];
D = [-12;12;-12;12];

Anorms = [norm(A,1);norm(A);norm(A,Inf)]
Bnorms = [norm(B,1);norm(B);norm(B,Inf)]
Cnorms = [norm(C,1);norm(C);norm(C,Inf)]
Dnorms = [norm(D,1);norm(D);norm(D,Inf)]

%% Question 3
clc, clear
A = pascal(5);
B = pascal(5,1);
C = pascal(5,2);

A2 = A*A
B2 = B*B
C2 = C*C

%% Question 4
clc, clear
A = [4,3,2,1;5,4,3,2];
AI = [A, eye(2)]
AIR = rref(AI)

R = AIR(:,5:end)
B = AIR(:,1:4)

if isequal(B, R*A)
    fprintf("Verified that B = R*A\n")
end

%% Question 5
clc, clear
disp("Question 5:")
C = [-1,2,2;2,2,-1;2,-1,2];
A = [C;C];

V1 = [1;1;1;1;1;1];
V2 = [1;2;3;1;2;3];
V3 = [6;6;6;0;0;0;];
V4 = [1;2;3;-1;-2;-3];

V1_res = A'*V1
V2_res = A'*V2
V3_res = A'*V3
V4_res = A'*V4

% Question 6
disp("Question 6:")
b = [14;5;11;14;5;11];
AM = [A,b];
RAM = rref(AM)

% Question 7
disp("Question 7:")
x = inv(A'*A)*A'*b

%% Question 8
clc, clear
A = toeplitz( [1 0 0 0 0]', [1 2 3 4 5]);
V = [1;1;1;1;1];

VtAtAV = V'*A'*A*V

%% Questions 9-10
clc, clear
A = toeplitz( [1 0 0 0 0]', [1 2 3 4 5]);

AI = [A, eye(5)]
AIR = rref(AI)
Ainv = AIR(:,6:end)

%% Part B
%% Question 1
clc, clear
A = sym(hadamard(8));
b = [20;-4;-8;0;0;0;0;0];

disp("Question 1:")
detA = det(A)

% Question 2
disp("Question 2:")
A8 = A;
A8(:,8) = b

% Question 3
disp("Question 3:")
x8 = det(A8)/det(A)

% Questions 4-5
disp("Question 4:")
N = size(A,2);
x = zeros(N,1);
for i= 1:N
    Ai = A;
    Ai(:,i) = b;
    x(i) = det(Ai)/det(A);
end
x

%% Part C
%% Question 1
clc, clear
M = [1,0,3,0;0,2,0,4;1,2,3,4;-1,2,-3,4];
A = [M, M*M];
disp("Question 1:")
Ared = rref(A)

% Question 2
disp("Question 2:")
R = Ared(1:2,:)

% Question 3
disp("Question 3:")
N = null(A,'r')

% Question 4
disp("Question 4:")
RN = R*N

% Question 5
disp("Question 5:")
AtA = null(A'*A,'r')
AAt = null(A*A','r')
AAtA = null(A*A'*A,'r')
AtAAtA = null(A'*A*A'*A,'r')

%% Part D
%% Question 1
clc, clear, close all
format short
clear, clc, close all
% The years the Olympics were held.
x = [1900 1904 1908 1912 1920 1924 1928 1932 1936 1948 1952 1956 1960 1964 1968 1972 1976 1980 1984 1988 1992 1996 2000]';
% Winning time in seconds.
y = [246.2 245.4 243.4 236.8 241.8 233.6 233.2 231.2 227.8 229.8 225.2 221.2 215.6 218.1 214.9 216.3 219.17 218.4 212.53 215.96 220.12 215.78 212.07]';

N = numel(x);
D = [ones(N,1), x];

disp("Question 1:")
DtD = D'*D

% Question 2
disp("Question 2:")
b = inv(DtD)*D'*y

% Question 3
disp("Question 3:")
yest = D*b;
e = y - yest;
RMSE = sqrt( (e'*e)/N )

% Questions 4-5
hold on
grid on
plot(x,y,'bo','MarkerFaceColor','y')
plot(x, yest, 'b--')
title("Olympic 1500-Meter Records: Men")
xlabel("Year")
ylabel("Time in Seconds")
axis([1900,2000,200,260])

for i=1:N
    plot([x(i), x(i)], [y(i), yest(i)], 'k')
end

legend(["Raw Data Points", "Best-Fit Line"])