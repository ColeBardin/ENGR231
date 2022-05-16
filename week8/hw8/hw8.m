%% Homework 8.1
%% Question 1
clc, clear, close all
A = [2, 1, -1; 0, 1, -2; 0, 4, 7]
l = [2, 5, 3];
A2 = A-2*eye(3);
A5 = A-5*eye(3);
A3 = A-3*eye(3);

RAM2 = rref(A2)
RAM5 = rref(A5)
RAM3 = rref(A3)

%% Question 2
clc, clear, close all
A = [6, -3, -1; -1, 8, 1; -2, 6, 7]
A5 = A - 5*eye(3);
RAM5 = rref(A5)

%% Question 3
clc, clear
A = [0,0,0;0,-4,-5;0,0,-1]
syms l;
Al = A-l*eye(3);
dAl = det(Al)
solve(dAl, l)

%% Question 4
clc, clear
A = [-7, -6; 1, -1]
syms l;
Al = A-l*eye(2);
dAl = det(Al)
solve(dAl,l)

%% Question 7
clc, clear
A = [6, 0; 10, -6]
RAM6 = rref(A - 6*eye(2))
RAMn6 = rref(A+6*eye(2))

%% Question 8
clc, clear
P = [1, 2; 4, 7]
D = [2, 0; 0, 1]

Apow4 = P*D^4*inv(P)

%% Question 9
clc, clear
A = [4, 5, 5; 5, 4, 5; 5, 5, 4]
RAMn1 = rref(A+eye(3))
RAM14 = rref(A-14*eye(3))

%% Question 10
clc, clear
A = [5, 0, -4; 2, 7, 4; 0, 0, 7]
RAM5 = rref(A-5*eye(3))
RAM7 = rref(A-7*eye(3))

%% Question 11
clc, clear
A = [1, -37; 1, 13]
syms l;
dAl = det(A-l*eye(2))
eq = solve(dAl, l)

dAip = rref(A - eq(2)*eye(2))
dAin = rref(A - eq(1)*eye(2))

%% Question 12
clc, clear
A = [8, 1; -25, 2]
syms L;
dAL = det(A-L*eye(2))
eq = solve(dAL, L)

dAin = rref(A - eq(1)*eye(2))
dAip = rref(A - eq(2)*eye(2))

%% Question 13
clc, clear
A = [2, -3; 3, 2]
syms L;
dAL = det(A - L*eye(2));
eq = solve(dAL, L)

dAin = rref(A - eq(1)*eye(2))
dAip = rref(A - eq(2)*eye(2))

%% Question 14
clc, clear
A = [8, -25; 1, 2]
P = [4, -3; 0, -1]
C = [5, 4; -4, 5]

t = inv(P)*A*P

%% Question 15
clc, clear
A = [0.2, 0.2; -0.1, 0.5]
syms L;
dAL = det(A-L*eye(2))
eq = solve(dAL, L)

dA1 = rref(A - eq(1)*eye(2))
dA2 = rref(A - eq(2)*eye(2))
