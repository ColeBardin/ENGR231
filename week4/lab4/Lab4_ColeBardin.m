%% Lab 4 by Cole Bardin     Section 62
%% Parameterized Systems of Equations
%% Question 1
% Clear the workspace, clear the command window and close all windows.
clear, clc, close all
% Declare the parameter m to be symbolic.
syms m
% Enter A(m) using an anonymous function as shown below.
A = @(m) [ m -1; (3*m - m^3) (1-3*m^2)];

% Test A func
A(-1)
A(0)
A(1)

% Now enter b(m) using another anonymous function. 
b = @(m) 2*(1-m) * [1; (m^2+4*m +1) ];

det(A(m));

% Question 2
% Make equation when det(A(m)) is zero
f = matlabFunction( det(A(m)) );
eqn = f(m) == 0;
% Use solve func to get solutions
solve(eqn);

% Question 3
hold on
x = -2.5 : 0.1 : 2.5;
y = f(x);

x_zeros = x(f(x)==0);
plot(x,y,'g','LineWidth',3)

plot(x_zeros(1), 0, 'bo', 'MarkerSize',12,'MarkerFaceColor','r')
plot(x_zeros(2), 0, 'bo', 'MarkerSize',12,'MarkerFaceColor','y')
plot(x_zeros(3), 0, 'bo', 'MarkerSize',12,'MarkerFaceColor','r')

xlabel("Parameter m")
ylabel("Determinant of A")
title("Number of Solutions")

%% Question 4
clc, clear, close all

syms m

A = @(m) [ m -1; (3*m-m^3) (1-3*m^2)];
b = @(m) 2*(1-m) * [1; (m^2+4*m +1) ];
f = matlabFunction( det(A(m)) );

% m = -1
AM = [A(-1), b(-1)];
rref(AM)

% m = 1
AM = [A(1), b(1)];
rref(AM)

% Question 5
% m = 0
AM = [A(0), b(0)];
rref(AM)

%% Question 6
clc, clear, close all

syms m

A = @(m) [ m -1; (3*m-m^3) (1-3*m^2)];
b = @(m) 2*(1-m) * [1; (m^2+4*m +1) ];

m6 = tand(sym(105));

AM = [A(m6), b(m6)];
AM_s = simplify(AM);

simplify(rref(AM_s))

%% Question 7



