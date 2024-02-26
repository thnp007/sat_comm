function [ Az,El ] = look_angles( la_e,lo_e,lo_s )
% [Az,El ] = look_angles( la_e,lo_e,lo_s );
B = (lo_e - lo_s);
b=acosd(cosd(B)*cosd(la_e));
A=asind(sind(abs(B))/sind(b));
% disp('The azimuth angle Az in degrees is:');
if(la_e < 0 && B < 0);
Az=A;
elseif(la_e < 0 && B > 0);
Az=360-A;
elseif(la_e > 0 && B < 0);
Az=180-A;
else %(la_e > 0 && B > 0);
Az=180+A;
end
R=6371; % average earth radius in kilometers
agso=42164; % average geostationary circular orbit radius in
%kilometers
d=sqrt(R^2+agso^2-2*R*agso*cosd(b)); % range in kilometers
% disp('The elevation angle El in degrees is:');
El=acosd((agso/d)*sind(b));
end

