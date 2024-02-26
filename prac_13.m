clc;
clear all;
close all;
fprintf(' itteration la_e Az El\n');
lo_e = 0; % the earth station longitude in degrees
lo_s = -45; % the satellite longitude in degrees
hold on;
iter=0;
datasave=[];
for la_e = 90:-1:-90% the earth station latitude in degree
iter=iter+1;
[Az,El] = look_angles( la_e,lo_e,lo_s );
plot(la_e,Az,'dr');
plot(la_e,El,'db');
datasave=[datasave; iter la_e Az El];
end
disp(datasave);
xlabel('Earth station latitude in degrees');
ylabel('Azimuth and Elevation angle variation in degrees');
text(80,250,'Az','Fontsize',10); % needs change according to
%results
text(80,10,'El','Fontsize',10); % needs change according to %results
