%% Plot position


% x position
figure(1)
t = x_position.time;
plot(t, x_position.data);
hold on;
plot(t, x_position_des.data);
xlabel('time');
ylabel('x position [m]');
legend('x position', 'desired x position')

figure(2)
t = x_position.time;
plot(t, y_position.data);
hold on;
plot(t, y_position_des.data);
xlabel('time');
ylabel('y position [m]');
legend('y position', 'desired y position')

figure(3)
t = x_position.time;
plot(t, z_position.data);
hold on;
plot(t, z_position_des.data);
xlabel('time');
ylabel('z position [m]');
legend('z position', 'desired z position')

figure(4)
plot(x_position.data, y_position.data);
hold on;
plot(x_position_des.data, y_position_des.data);
xlabel('x position [m]');
ylabel('y position [m]');
legend('x-y position', 'desired x-y position')

%% 
figure(6)
plot3(x_position_des.data, y_position_des.data, z_position_des.data, '.-', 'MarkerSize', 20);
hold on;
plot3(x_position.data, y_position.data, z_position.data, 'LineWidth', 2);
grid();
xlabel('x position [m]')
ylabel('y position [m]')
zlabel('z position [m]')
legend('(x,y,z) desired position', '(x,y,z) position')

