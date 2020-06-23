%% Plot position

%% 
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

