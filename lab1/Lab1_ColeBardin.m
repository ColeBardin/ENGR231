%% Lab1 by Cole Bardin  Section: 62
%% Vectors in MATLAB
%% Question 1
time_pts = -4*pi:0.02:4*pi; % Row vector from -4pi to 4pi with step of 0.02
[~,N] = size(time_pts);
disp("time_pts has " + N + " points")

%% Question 2
a = 1/4:1/120:1/3;
b = 100:-9:0;
c = [1:4:40 2:4:40 3:4:40];
c = sort(c);

enum_a = numel(a); % Retrieve number of elements for vector a
enum_b = numel(b); % Retrieve number of elements for vector b
enum_c = numel(c); % Retrieve number of elements for vector c
disp("Vector a has " + enum_a + " elements");
disp("Vector b has " + enum_b + " elements");
disp("Vector c has " + enum_c + " elements");

%% Questions 3-5: Lissajous Curves
t = 0:0.01:2*pi;
y1 = 3*sin(4*t);
y2 = 4*sin(3*t);

figure(1) % Generate figure
% y1 plot
subplot(3, 2, 1) % Subplot index 1
plot(t,y1,'r','LineWidth',3) % Plot y1 v t
set(gca,'fontsize',18); % Set the fontsize to 18
grid on % Enable grid
title('y1(t)') % Set subplot title
axis([0 2*pi -3.25 3.25]), yticks(-3:1:3) % Set axis bounds and y tick marks
xlabel('t') % Add x label

% y2 plot
subplot(3, 2, 2) % Subplot index 2
plot(t,y2,'b','LineWidth',3) % Plot y2 v t
set(gca,'fontsize',18);  % Set the fontsize to 18 
grid on % Enable grid
title('y2(t)') % Set subplot title
axis([0 2*pi -4.25 4.25]), yticks(-4:2:4) % Set axis bounds and y tick marks
xlabel('t') % Add x label

% y2 vs y1 plot
subplot(3, 2, 3:6) % Subplots 3,4,5,6
plot(y1,y2,'k','LineWidth',3) % Plot y2 v y1
hold on % Enable hold for next plot call
set(gca,'fontsize',18); % Set the fontsize to 18
title('Lissajous Curve') % Set plot title
axis([-3 3 -4 4]) % Set axis bounds
xlabel('y1') % Add x label
ylabel('y2') % Add y label
fill(y1,y2,'magenta') % Fill Lissajous curves with magenta
plot(y1(1), y2(1), 'bp','MarkerFaceColor','yellow','MarkerSize',20) % Plot yellow star in center

%% Upgraded Challenge 1
t = 0:0.01:2*pi;
y1 = 5*sin(3*t + pi/4);
y2 = 5*sin(6*t);

figure(1) % Generate figure
% y1 plot
subplot(3, 2, 1) % Subplot index 1
plot(t,y1,'r','LineWidth',3) % Plot y1 v t
set(gca,'fontsize',18); % Set the fontsize to 18
grid on % Enable grid
title('y1(t)') % Set subplot title
axis([0 2*pi -5.25 5.25]), yticks(-5:2:5) % Set axis bounds and y tick marks
xlabel('t') % Add x label

% y2 plot
subplot(3, 2, 2) % Subplot index 2
plot(t,y2,'b','LineWidth',3) % Plot y2 v t
set(gca,'fontsize',18);  % Set the fontsize to 18 
grid on % Enable grid
title('y2(t)') % Set subplot title
axis([0 2*pi -5.25 5.25]), yticks(-5:2:5) % Set axis bounds and y tick marks
xlabel('t') % Add x label

% y2 vs y1 plot
subplot(3, 2, 3:6) % Subplots 3,4,5,6
plot(y1,y2,'k','LineWidth',3) % Plot y2 v y1
hold on % Enable hold for next plot call
set(gca,'fontsize',18); % Set the fontsize to 18
title('Lissajous Curve') % Set plot title
axis([-5 5 -5 5]) % Set axis bounds
xlabel('y1') % Add x label
ylabel('y2') % Add y label
fill(y1,y2,'magenta') % Fill Lissajous curves with magenta
plot(y1(1), y2(1), 'bp','MarkerFaceColor','yellow','MarkerSize',20) % Plot yellow star in center

%% Upgraded Challenge 2
t = 0:0.01:2*pi;
y1 = 6*cos(5*t);
y2 = 6*sin(5*t);

figure(1) % Generate figure
% y1 plot
subplot(3, 2, 1) % Subplot index 1
plot(t,y1,'r','LineWidth',3) % Plot y1 v t
set(gca,'fontsize',18); % Set the fontsize to 18
grid on % Enable grid
title('y1(t)') % Set subplot title
axis([0 2*pi -6.25 6.25]), yticks(-6:2:6) % Set axis bounds and y tick marks
xlabel('t') % Add x label

% y2 plot
subplot(3, 2, 2) % Subplot index 2
plot(t,y2,'b','LineWidth',3) % Plot y2 v t
set(gca,'fontsize',18);  % Set the fontsize to 18 
grid on % Enable grid
title('y2(t)') % Set subplot title
axis([0 2*pi -6.25 6.25]), yticks(-6:2:6) % Set axis bounds and y tick marks
xlabel('t') % Add x label

% y2 vs y1 plot
subplot(3, 2, 3:6) % Subplots 3,4,5,6
plot(y1,y2,'k','LineWidth',3) % Plot y2 v y1
hold on % Enable hold for next plot call
set(gca,'fontsize',18); % Set the fontsize to 18
title('Lissajous Curve') % Set plot title
xlabel('y1') % Add x label
ylabel('y2') % Add y label
fill(y1,y2,'magenta') % Fill Lissajous curves with magenta
plot(y1(1), y2(1), 'bp','MarkerFaceColor','yellow','MarkerSize',20) % Plot yellow star in center
axis equal tight % Make the display ratio of each axis the same and tighten bounds

%% Questions 6-10: Design a Symmetrical Flower
clear, clc, close all
fig = figure(6);
set(fig,'Color','k') % Set background to black

% 1. First draw the stem.
before = findall(gca); % So we can change the color later
xy = [[1, -1/2, 0]; [-8,-5, 0]]; % three points for the stem.
fnplt(cscvn(xy), 'green', 8); % cubic spline to smooth the curve
added = setdiff(findall(gca), before);

% Alter the color to a dark green
dark_green = [0 0.6 0];
set(added, 'Color', dark_green) % changes the stem to a dark_green
hold on
%plot([0, -1, 0], [-8,-5, 0], 'green', 'LineWidth', 8)

% Now draw the green sepals using the equation for a polar rose.
time = 0: 0.01 : 1*pi; % use 1*pi so the fill is visible
r = 5*cos(5*time); % the radius at angle t.
x = r .* sin(time); y = r .* cos(time);
fill(x, y, "green") % comment this line out
axis equal; axis off

% Draw circle centerred at origin with radius 4
h1 = circle(0, 0, 4);
% fill the circle with yellow
h1.set('FaceColor', 'yellow')
h1.set('FaceAlpha', 0.8)

% Add outer petals to the flower
time = 0:0.01:2*pi;
x_t = sin(3*time) + 3*sin(8*time);
y_t = cos(3*time) + 3*cos(8*time);
fill(x_t,y_t,'red')

% Add central disc for the flower
h2 = circle(0,0,2);
h2.set('FaceColor','blue')
h2.set('FaceAlpha',1)

% Add inner petals
x2_t = sin(3*time) + sin(13*time);
y2_t = cos(3*time) + cos(13*time);
fill(x2_t,y2_t,'yellow')