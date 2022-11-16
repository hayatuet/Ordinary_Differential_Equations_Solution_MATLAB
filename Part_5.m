clc; close all; clear all;

func = @(Y) [-Y(3) - Y(2) + 28; ...
              Y(1) + 0.1*Y(2); ...
              (Y(1) - 14)*(Y(3) - 28) + 0.1]';
dt = 0.01;
endTime = 1000;
n = endTime/dt;
y = zeros(n, 3);

y(1, :) = [13,-139,169]; % Initial Condition

for idx = 1:n-1
    y(idx + 1, :) = func(y(idx, :))*dt + y(idx, :);
end

plot3(y(:, 1), y(:, 2), y(:, 3))
hold on
plot3(y(:, 1), y(:, 2), zeros(size(y,1),1))
plot3(-50*ones(size(y,1),1), y(:, 2), y(:, 3))
plot3(y(:, 1), -50*ones(size(y,1),1), y(:, 3))

title('Numerical Solution')
xlabel('x')
ylabel('y')
zlabel('z')

legend('Trajectory', 'xy Projection', ...
    'yz Projection', 'xz Projection');
grid on;