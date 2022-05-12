%% Lab 7 by Cole Bardin Section 62
%% Pacman Game!
%% Questions 1-2
clc, clear, close all

xcoords = [0, 1, 2, 3, 2, 3, 2, 1, 0];
ycoords = [2, 1, 1, 2, 2.5, 3, 4, 4, 3];
zcoords = [1, 1, 1, 1, 1, 1, 1, 1, 1];

pacman = [xcoords; ycoords; zcoords];

fill(pacman(1,:), pacman(2,:), 'y', 'LineWidth', 4)
axis([-1,5, -1, 5])
title("Cole's Pacman Image")
ylabel('y')
xlabel('x')

% Question 3
hold on
plot(2,3.25, 'k.', 'MarkerSize', 20)

%% Questions 4-5
clc, clear, close all
translate = @(dx,dy) [1,0,dx;0,1,dy;0,0,1];
rotate = @(d) [cosd(d), -sind(d), 0; sind(d), cosd(d), 0; 0,0,1];
scale = @(k) [k, 0, 0; 0, k, 0; 0, 0, 1];

Q4 = [5;8;1];
translate(3,5)*Q4

V1 = rotate(30) * rotate(60) * [7;24;1]
V2 = rotate(90) * [7;24;1]

% Question 6
x_maze = [0, 25, 25, 0, 0, 15, 15, 5, 5, 20, 20, 0];
y_maze = [0, 0, 25, 25, 10, 10, 15, 15, 20, 20, 5, 5];

fill(x_maze, y_maze, 'cyan', 'LineWidth',4)
title("Pacman Maze")
xlabel("x")
ylabel("y")
axis([-5, 30, -5, 30])

%% Question 7
clc, clear, close all
xcoords = [0, 1, 2, 3, 2, 3, 2, 1, 0];
ycoords = [2, 1, 1, 2, 2.5, 3, 4, 4, 3];
zcoords = [1, 1, 1, 1, 1, 1, 1, 1, 1];

pacman = [xcoords; ycoords; zcoords];
x_maze = [0, 25, 25, 0, 0, 15, 15, 5, 5, 20, 20, 0];
y_maze = [0, 0, 25, 25, 10, 10, 15, 15, 20, 20, 5, 5];
% a)
% Insert second Loop for the PACMAN maze
x_maze = [ x_maze(1:6) x_maze+30 x_maze(7:12)];
y_maze = [ y_maze(1:6) y_maze+10 y_maze(7:12)];

% b)
% Insert 3rd and 4th Loops for PACMAN maze
x_maze = [ x_maze(1:12) x_maze+60 x_maze(13:24)];
y_maze = [ y_maze(1:12) y_maze+20 y_maze(13:24)];

f1 = figure(); % Handle for a new figure
mymap = [cool; hot; summer; jet]; % Combine more than one colormap for exotic effects
colormap(mymap)
% Enlarge figure to almost full screen.
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0.1, 0.1 0.9, 0.9])
% Plot your maze using fill and the fancy custom colormap named mymap
Cfill = rand(size(x_maze)); % random color fill using the colormap
fill(x_maze, y_maze, Cfill, 'LineWidth', 2, 'EdgeColor', 'red')
hold on % we will add more items soon.
% Fine tune the axes
ax = gca; ax.Color = [0, 0, 0.4]; % dark blue background
axis equal tight
axis([-5, 120, -5, 60])
set(gca, 'Color', 'black')

% Store and plot all eight turning points
TP = [22.5 22.5 2.5 2.5; 2.5 22.5 22.5 12.5]; % turning points in the first loop
TP = [TP, TP + [30;10], TP + 2*[30;10], TP + 3*[30;10]]; % concatenate with TPs in the second loop

plot(TP(1,:), TP(2,:), 'h', 'MarkerSize',16, 'MarkerEdgeColor','b', 'MarkerfaceColor','y');
pacman_handle = fill(pacman(1,:),pacman(2,:),'y', 'LineWidth', 2);

black_jewel_handle = plot(105, 42.5, 'd', 'MarkerFaceColor','k', 'MarkerSize',20);

% add 24 bonus jewels
jewel_locations = [ 12.5 22.5 22.5 12.5 2.5 12.5; 2.5 7.5 17.5 22.5 17.5 12.5]; % the six jewels in loop 1
jewel_locations = [ jewel_locations jewel_locations + [30;10]]; % 6 more jewels in loop 2

% Add 12 more jewels in loops 3 and 4
% Just repeat the last line but using 2*[30;10]] instead.
% Bonus depends on color of each jewel
jewel_colors = ["red", "blue", "green", "magenta", "yellow", "cyan"];
jewel_colors = [jewel_colors jewel_colors jewel_colors jewel_colors]; % repeats four times

jewels = [] % vector of handles for each jewel plot
% Plot all the bonus jewels using a for loop
for n = 1:numel(jewel_colors)
 x = jewel_locations(1,n); y = jewel_locations(2,n);
 h = plot(x, y, 'd', 'MarkerSize', 14, 'MarkerFaceColor', jewel_colors(n));
 jewels = [jewels, h];
end
% Add a display message near the bottom
text(40, 0, 'Jewels:', 'FontSize', 20, 'Color', 'red' )