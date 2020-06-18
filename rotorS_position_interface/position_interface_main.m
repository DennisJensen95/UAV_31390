
% This file contains parameters and calculations needed for running
% MatLab with rotorS ROS package for interfacing with a position controlled
% drone

%%
clc
close all
clear
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
THRUST_OFFSET =     15;

%% PATH PLANNING
addpath('../maze/');
maze_1;
route_start = [0, 0];
route_end = [3, 6];

route_2d = Astar_2d(map, route_start+1, route_end+1);
height = ones(length(route_2d), 1);
route_2d = [ route_2d height ]';
route_2d = route_2d - [1;1;0];