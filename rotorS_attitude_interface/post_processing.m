%% Plot position

%% Exercise 6.2
figure(6)
plot3(x_position_des.data, y_position_des.data, z_position_des.data, 'o', 'MarkerSize', 5);
hold on;
plot3(x_position.data, y_position.data, z_position.data, 'LineWidth', 3);
xlim([-1 1])
ylim([-1 1])
grid();


xlabel('x position [m]')
ylabel('y position [m]')
zlabel('z position [m]')
legend('(x,y,z) desired position', '(x,y,z) position')


%% Exercise 6.3

% Plot 2 meter step response x
figure(1)
plot(x_position_des.time, x_position_des.data, '-.', 'LineWidth', 3)
hold on
plot(x_position.time, x_position.data, 'LineWidth', 2)
xlabel('time [s]')
ylabel('x position [m]')
legend('Desired position', 'Actual position')
grid;

figure(2)
plot(y_position_des.time, y_position_des.data, '-.', 'LineWidth', 3)
hold on
plot(y_position.time, y_position.data, 'LineWidth', 2)
xlabel('time [s]')
ylabel('y position [m]')
legend('Desired position', 'Actual position')
grid;


figure(3)
plot(yaw_position_des.time, yaw_position_des.data, '-.', 'LineWidth', 3)
hold on
plot(yaw_position.time, yaw_position.data, 'LineWidth', 2)
xlabel('time [s]')
ylabel('yaw position [degrees]')
legend('Desired position', 'Actual position')
grid;

%% Exercise 6.4

figure(1)
plot(x_position_des.data, y_position_des.data, '-')
hold on;
plot(x_position.data, y_position.data)
hold on;
for i=1:length(x_position.data)
    bool_st = mod(i, 10) == 0;
    if (bool_st)
        x = x_position.data(i);
        y = y_position.data(i);
        yaw = yaw_position.data(i);
        u = 0.5 * cos(deg2rad(yaw)); 
        v = 0.5 * sin(deg2rad(yaw));
        yaw_des = yaw_position_des.data(i);
        u_des = 0.5 * cos(deg2rad(yaw_des)); 
        v_des = 0.5 * sin(deg2rad(yaw_des));
        quiver(x, y, u, v, 'r', 'LineWidth', 2);
        hold on;
        quiver(x, y, u_des, v_des, 'g', 'LineWidth', 2);
        hold on;
    end
end