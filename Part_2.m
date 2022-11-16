clc; clear; close all;

odefun = @(t, y) [-y(3) - y(2) + 28; ...
              y(1) + 0.1*y(2); ...
              (y(1) - 14)*(y(3) - 28) + 0.1]; 

y0 = [0.5,0.5,27];
[t, y] = ode45(odefun, [0 1000], y0);

fixed_pts = [0,0,28; 14,-140,168];

plot3(y(:,1), y(:,2), y(:,3))
hold on
plot3(fixed_pts(:, 1), fixed_pts(:, 2), ...
    fixed_pts(:, 3), '*', 'MarkerSize', 8, 'LineWidth', 2)
xlabel('x')
ylabel('y')
zlabel('z')

plot3(y(:, 1), y(:, 2), -100*ones(size(y,1),1))
plot3(-50*ones(size(y,1),1), y(:, 2), y(:, 3))
plot3(y(:, 1), -180*ones(size(y,1),1), y(:, 3))

xlabel('x')
ylabel('y')
zlabel('z')
title('ode5 Solution')
legend('Trajectory', 'xy Projection', ...
    'yz Projection', 'xz Projection');
grid on;

legend('Trajectory', 'Fixed Points', 'xy Projection', ...
    'yz Projection', 'xz Projection');
