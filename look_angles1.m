## Copyright (C) 2024 Admin
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} look_angles1 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Admin <Admin@DESKTOP-JEOGMG3>
## Created: 2024-02-12

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
