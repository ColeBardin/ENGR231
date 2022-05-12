%% Lab 7 by Cole Bardin Section 62
%% Pacman Game!
%% Questions 1-2
clc, clear, close all

xcoords = [0, 1, 2, 3, 2, 3, 2, 1, 0];
ycoords = [2, 1, 1, 2, 2.5, 3, 4, 4, 3];
zcoords = [1, 1, 1, 1, 1, 1, 1, 1, 1];

pacman = [xcoords, ycoords, zcoords];

fill(xcoords, ycoords, 'y', 'LineWidth', 4)
axis([-1,5, -1, 5])
title("Cole's Pacman Image")
ylabel('y')
xlabel('x')

% Question 3
hold on
plot(2,3.25, 'k.', 'MarkerSize', 20)

% Questions 4-5
translate = @(dx,dy) [1,0,dx;0,1,dy;0,0,1];
rotate = @(angle_in_deg) [dcos(angle_in_deg), -dsin(angle_in_deg), 0; dsin(angle_in_deg), dcos(angle_in_deg), 0; 0,0,1];