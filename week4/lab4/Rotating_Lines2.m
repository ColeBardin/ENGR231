% Demo to illustrate the Zero, One, Infinity Theorem for Linear Systems

% As the two lines rotate, the solution(s) are shown as yellow dots. 
% The number of solutions is always 0, 1 or infinity. 

% Each line rotates about a fixed point. 
% Line 1: Fixed Point (x0, y0) = (-2, -2)
% Line 2: Fixed Point (x0, y0) = (+2, +2)

% Line 1:   (y+2)/(x+2) = slope1 = m1 = tand(theta)    
%        --> m1 * (x+2) = y+2
%        --> m1 * x - y = +2 - 2*m1
% Line 2:   (y-2)/(x-2) = slope2 = m2 = tand(-3*theta)
%        --> m2 * (x-2) = y-2
%        --> m2 * x - y = -2 + 2*m2


% The code uses the triple angle identity for tand(-3*theta) to obtain
% algebraic forms. 

clc, clear, close all


% or in matrix form
% syms theta
% m1 = tand(theta), m2 = tand(-3*theta)
% A = [ m1 -1; m2 -1]
% b = [+2 - 2*m1; -2 + 2*m2]


fig = figure(1);
% Enlarge figure to full screen.
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);

% draw the top fixed points as hexagonal stars
center1 = plot(-2, -2,'bh', 'MarkerSize', 20, 'MarkerFaceColor', 'cyan', 'tag', 'center');
grid on; hold on
center2 = plot(+2, +2,'bh', 'MarkerSize', 20, 'MarkerFaceColor', 'red', 'tag', 'center');
axis equal tight

% polish the appearance of the graph
L = 6;
axis([-L, L, -L, L])
set(gca, 'FontSize', 20)
xticks(-L:2:L), yticks(-L:2:L)

h = findobj('tag', 'center');
uistack(h, 'top') 

% tracery of the solution points
m = -10:0.05:10;
plot((- m.^2 + 2*m + 1)./(m.^2 + m) , (m.^2 + 2*m - 1)./(m + 1) , ':k', 'LineWidth', 1)
plot([-L, L] ,[-L, L] , ':k', 'LineWidth', 1)

xpts = [-6, +6];

% start the animation
for theta = 0:2.5:180
    theta
    slope1 = tand(theta);
    theta2 = -3 * theta;
    slope2 = tand(theta2);
    
    m1 = slope1; m2 = slope2; % short names for the slopes
    A = [ m1 -1; m2 -1]
    b = [+2 - 2*m1; -2 + 2*m2]
    
    % handle the case of vertical lines
    % case where Line 1 is vertical --> x = -2
    if ismember(m1, [-Inf, +inf])
        A(1,:) = [1 0]; b(1) = -2;
    end
    
    % case where Line 2 is vertical --> x = +2
    if ismember(m2, [-Inf, +inf])
        A(2,:) = [1 0]; b(2) = +2;
    end
    
    % Find and display the number of solutions
    N = number_of_solutions(A,b)
    title_text = sprintf('Number of Solutions: %3d', N);      
    title(title_text)
    
    % plot both lines checking for vertical lines at each step
    % draw line 1
    if ~ismember(slope1, [Inf, -Inf]) 
        ypts = -2 +(xpts + 2) * slope1;
        line1 = plot(xpts, ypts, 'b', 'LineWidth', 3);
    else
        % line 1 is vertical
        line1 = plot([-2, -2], xpts, 'blue', 'LineWidth', 3);
    end
            
    % draw line 2
    if ~ismember(slope2, [Inf, -Inf]) 
        ypts = 2 +(xpts - 2) * slope2;
        line2 = plot(xpts, ypts, 'm', 'LineWidth', 3);
    else
        % line 2 is vertical
        line2 = plot([+2, +2], xpts, 'magenta', 'LineWidth', 3);
    end

    % slope2 = (m^3-3*m)/(1-3*m^2); % triple angle identity for tangent function

    % plot the intersection points, i.e. the solution
    m = slope1;
    pt = plot((- m^2 + 2*m + 1)/(m^2 + m) , ...
        (m^2 + 2*m - 1)/(m + 1),  ...
        'bo', 'MarkerSize', 16, 'MarkerFaceColor', 'yellow', 'tag', 'dot');
    
    h = findobj('tag', 'center');
    uistack(h, 'top') 
    
    % 45 degrees is special. Only case with an infinite # of solutions
    if theta==45
        % second line equals first line. Infinite number of solutions
        pts = plot(-5:1:5, -5:1:5, ...
            'bo', 'MarkerSize', 12, 'MarkerFaceColor', 'yellow', 'tag', 'dot');
        pause(1)
        set(pts, 'MarkerSize', 8)
    end
    
    if ismember(theta, [0, 30, 45, 90, 135])
        pause(2) % pause for emphasis. These are interesting cases.
    end

    pause(0.25)
    % make previous lines mostly transparent
    line1.Color=[0,0,1,0.1];
    line2.Color=[1,0,1,0.1];
    set(pt, 'MarkerSize', 8)
end

line1.Color=[0,0,1,1];
line2.Color=[1,0,1,1];

% lift the dots to the top. Looks nicer
dots = findobj('tag', 'dot');
uistack(dots, 'top') 


%% An auxilliary function to count the number of solutions
% Used only in the title display

function [number] = number_of_solutions(A,b)
    % Input A is an mxn matrix. b is a mx1 column vector. 
    % The unknown x is an nx1 column vector.  
    % Finds the number of solutions of the linear system Ax = b
    % Number of solutions can only be 
    %   0. zero, (inconsistent) 
    %   1. one (unique) or
    % inf. infinite (there are free variables). 
    %      (Infinity in MATLAB is written inf or Inf.)

    number_of_variables = numel( A(1,:)); % x1, x2, ..., xn
    AM = [A b]; % augmented matrix
    if rank(AM) > rank(A) % system is inconsistent. There is a pivot in the final column.
        number = 0;
    elseif rank(A) < number_of_variables
        number = inf;   % There are free variables
    else  
        number = 1; % unique!
    end  
end



