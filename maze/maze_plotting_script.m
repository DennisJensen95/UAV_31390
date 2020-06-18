
% This file contains parameters and calculations needed for running
% MatLab with rotorS ROS package for interfacing with a position controlled
% drone

%%
clc;
close all;
clear all;

%%

maze_1;
start = [0, 0];
end_ = [5, 0];

fig_num = 1;

plot_map(map, fig_num);
plot_start_stop(start, end_, fig_num)

route = Astar_2d(map, start+1, end_+1);

plot_route(route, fig_num);

%%

fig_num = 2;

maze_1_3D;

start = [0 0 0];
end_ = [5 0 2];

plot_map(map, fig_num, 0);
plot_start_stop(start, end_, fig_num)

route = Astar_3d(map, start+1, end_+1);

plot_route(route, fig_num)

