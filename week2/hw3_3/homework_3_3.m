%% Preclass Homework 3.3
%% Question 1
clc
A = [2, 0, 1; 3, 0, 0; 0, 1, 0; 0, 1, 3];
I = [0; 3; 6; 0];
AM = [A, I];

RAM = rref(AM)

%% Question 2
clc
A = [1, 0, -3, 0; 1, 8, -5, -2; 1, 6, -6, 0; 3, 7, -7, -1];
I = [0; 0; 3; 6];
AM = [A, I];

RAM = rref(AM)

%% Question 3
clc
A = [1, 0, 0, -1, 0; 2, 3, 3, -4, -2; 0, 2, 1, -2, -1; 0, 1, 0, 0, 0; 0, 0, 1, 0, -1];
I = [0; 2; 0; 1; 0];
AM = [A, I]; 

RAM = rref(AM)

%% Question 7 part 2
clc
AM = [1, 3, -1, 3; 1, 5, 3, 27; -3, -6, 5, 11];

RAM = rref(AM)

%% Question 8 part 2
clc
AM = [1, 6, -7, 8; 1, 4, 3, 10; 4, 2, 2, -26];

RAM = rref(AM)

%% Question 23
clc
AM = [1, 4, -3, 8, 0; 0, 1, -5, 5, 0];

RAM = rref(AM)


