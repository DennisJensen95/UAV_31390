
% This file contains parameters and calculations needed for running
% MatLab with rotorS ROS package for interfacing with an attitude controlled
% drone

%%
clc;
close all;
clear;
%%

% Define constants
FIXED_STEP_SIZE =   0.01;
POS_SUB_DT =        0.01;
ATTI_SUB_DT =       0.01;
IMU_SUB_DT =        0.01;
ODOMETRY_SUB_DT =   0.01;
GAZEBO_SYNC_DT =    0.01;
RAD2DEG =           180/pi;
DEG2RAD =           pi/180;
THRUST_OFFSET =     7.16;

%% PATH PLANNING 3D
% addpath('../maze');
% maze_1_3D;
% start_ = [0, 0, 1];
% end_ = [8, 9, 3];
% 
% route_3d = Astar_3d(map, start_+1, end_+1)' - [1;1;0];

%% Data blocks
log_data();

function log_data
    a = sim('attitude_interface_alt','SimulationMode','normal');
    x_position = a.get('x_position');
    y_position = a.get('y_position');
    z_position = a.get('z_position');
    x_position_des = a.get('x_position_des');
    y_position_des = a.get('y_position_des');
    z_position_des = a.get('z_position_des');
    assignin('base','x_position',x_position);
    assignin('base','y_position',y_position);
    assignin('base','z_position',z_position);
    assignin('base','x_position_des',x_position_des);
    assignin('base','y_position_des',y_position_des);
    assignin('base','z_position_des',z_position_des);
end
