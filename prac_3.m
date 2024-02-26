%% to write a program to calculate to determine the limit of visibility for an Earth Station
clc
clear all
close all
%To write a program to calculate to determine the limits of visibility for an earth station.
la_e = input('the earth station latitude in degree =');
lo_e = input('the earth station longitude in degree =');
Elmin = input('the minimum angle of elevation in degree =');
[east_limit,west_limit]=visibility_limit_angles(la_e,lo_e,Elmin);
disp('The satellite limit east of earth station in degrees is at:');
East_lmt=east_limit
disp('The satellite limit west of earth station in degrees is at:');
West_lmt=west_limit

