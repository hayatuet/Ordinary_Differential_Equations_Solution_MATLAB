clc; close all; clear all;

Part_5;

close all;
ydiff = diff(y)/dt;
  
plot3(ydiff(:, 1), ydiff(:, 2), ydiff(:, 3));
hold on
plot3(ydiff(:, 1), ydiff(:, 2), -250*ones(size(ydiff,1), 1));
plot3(ydiff(:, 1), -80*ones(size(ydiff,1), 1), ydiff(:, 3));
plot3(-80*ones(size(ydiff,1), 1), ydiff(:, 2), ydiff(:, 3));

xlabel('x'); ylabel('y'); zlabel('z');

legend('Rate of Change', 'xy Projection', ...
    'yz Projection', 'xz Projection');
grid on;