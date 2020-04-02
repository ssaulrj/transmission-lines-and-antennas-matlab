clc;
clear all;
close all;

figure(1);
theta = 0:pi/1000:pi;
f = (cos(pi.*cos(theta))+1)./(2*sin(theta));
polar (theta, f);

figure(2);
f2 = (cos(pi.*cos(66.5))+1)./(2*sin(66.5));
% polar (theta, f);