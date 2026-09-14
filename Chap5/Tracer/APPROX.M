%Approx - illustre l'utilisation
%         de la fonction spline
%         Détail: help spline
clear
close all
load points.txt; %Charge le fichier
     %contenant les triplets (x,y,z)
x=linspace(0,2000);

y=spline(points(:,1),points(:,2),x);
figure(1);
plot(points(:,1),points(:,2),'ro',...
   x,y,'b.');
grid on;
title('Vue en X Y');

z=spline(points(:,1),points(:,3),x);
figure(2);
plot(points(:,1),points(:,3),'ro',...
   x,z,'g.');
grid on;
title('Vue en X Z');

figure(3)
plot3(x,y,z,'b.');
grid on;
title('Vue en 3D');

