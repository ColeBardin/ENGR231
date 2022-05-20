%% Online Exam 4
%% Question 1
clc, clear
u = [0;-3;2]
v = [-4;-1;5]
u-v

%% Q2
clc, clear
syms l;
A = [3, -2; 2, 3]
Al = A-l*eye(2)
dAl = det(Al)
eq = solve(dAl, l)

Ap = A-eq(2)*eye(2)
An = A-eq(1)*eye(2)

Rp = rref(Ap)
Rn = rref(An)

%% Q4
clc, clear
w = [4;-1;-5]
x = [7;-2;3]

dot(w,w)
dot(x,w)

%% Q5
clc, clear
A = [3, 0, -1, 0; 3, -1, 0, 0; 2, -1, 1, 0; 4, -2, -2, 2]
Al = A-2*eye(4)
rref(Al)

%% Q6
P = [1, 2; 2, 3]
D = [2, 0; 0, 3]
D4 = D.^4
A4 = P*D4*inv(P)

%% Q7
clc, clear
syms l;
A = [3, 1; -17, 11]
Al = A-l*eye(2)
dAl = det(Al)
eq = solve(dAl, l)

Ap = A-eq(2)*eye(2)
An = A-eq(1)*eye(2)

Rp = rref(Ap)
Rn = rref(An)

%% Q 9
clc, clear
A = [13, -12, 6; 18, -23, 15; 18, -28, 20]
A1 = A-1*eye(3)
A4 = A-4*eye(3)
A5 = A-5*eye(3)

R1 = rref(A1)
R4 = rref(A4)
R5 = rref(A5)

%% Q 10
clc, clear
u = [11;2;-3;0]
v = [-4;19;-2;3]
dot(u,v)

%% Q 11
clc, clear
syms l;
A = [10, 5; 5, 10]
Al = A-l*eye(2)
dAl = det(Al)
eq = solve(dAl, l)

