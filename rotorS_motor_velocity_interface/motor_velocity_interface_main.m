
% This file contains parameters and calculations needed for running
% MatLab with rotorS ROS package for interfacing with an attitude controlled
% drone

%%
clc;
close all;
clear all;
%%

% Define constants
m = 0.716;
L = 0.17;
r = 0.1;
Ixx = 0.007; 
Iyy = 0.007;
Izz=0.012;
g = 9.81;
b = 0.001;
k_f = 0.001;


FIXED_STEP_SIZE =   0.01;
POS_SUB_DT =        0.01;
ATTI_SUB_DT =       0.01;
IMU_SUB_DT =        0.01;
ODOMETRY_SUB_DT =   0.01;
GAZEBO_SYNC_DT =    0.01;
RAD2DEG =           180/pi;
DEG2RAD =           pi/180;
THRUST_OFFSET =     15;
MAX_ROTOR_VEL =     838;