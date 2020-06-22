
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
addpath('../maze');
maze_1_3D;
start_ = [0, 0, 1];
end_ = [8, 9, 3];

route_3d = Astar_3d(map, start_+1, end_+1)' - [1;1;0];