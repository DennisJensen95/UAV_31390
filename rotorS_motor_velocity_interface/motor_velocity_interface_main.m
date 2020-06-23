
% This file contains parameters and calculations needed for running
% MatLab with rotorS ROS package for interfacing with an attitude controlled
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
THRUST_OFFSET =     7.16;
MAX_ROTOR_VEL =     838;

%% HUMMINGBIRD

Ixx = 0.007; 
Iyy = 0.007;
Izz = 0.012;
g = 9.81;
m = 0.716;
b = 1.6e-2;
% b = 1.3678e-07;
k_f = 8.54858e-06;
L = 0.17;