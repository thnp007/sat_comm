clc;
close all;
clear all;
T=input("Enter the value of orbital time period T=");
T=(T(1)*3600)+(T(2)*60)+T(3);
MU=3.986*10^5;
re=6378.13;
a=(((T^2)*MU)/(4*(pi^2)))^(1/3)-re
if (a<1500)
  disp("Orbit is LEO");
elseif(a>35000)
  disp("orbit is GEO");
else
  disp("orbit is MEO");
end
