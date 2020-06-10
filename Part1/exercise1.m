clc
close all
clear
%% exercise 1.5 a 
v = pi;

R = [1,0,0;0,cos(v),-sin(v);0,sin(v),cos(v)];
tR = trace(R);

q0 = sqrt((tR + 1)/4)
q1 = sqrt(R(1,1)/2 + (1-tR)/4)
q2 = sqrt(R(2,2)/2 + (1-tR)/4)
q3 = sqrt(R(3,3)/2 + (1-tR)/4)

%% exercise 1.5 c
clear
clc
v = pi;

R = [cos(v),0,sin(v);0,1,0;-sin(v),0,cos(v)];
tR = trace(R);

q0 = sqrt((tR + 1)/4)
q1 = sqrt(R(1,1)/2 + (1-tR)/4)
q2 = sqrt(R(2,2)/2 + (1-tR)/4)
q3 = sqrt(R(3,3)/2 + (1-tR)/4)

