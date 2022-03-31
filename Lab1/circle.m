function h = circle(x, y, r)
    fill_color = [0.25 0.25 0.25]; % default fill color
    hold on
    theta = 0:pi/50:2*pi;
    xunit = r * cos(theta) + x;
    yunit = r * sin(theta) + y;
    h = fill(xunit, yunit, fill_color); % handle to circle object
end