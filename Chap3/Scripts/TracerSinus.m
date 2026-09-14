%% Vectorisation pour tracer une courbe
% Tracer un sinus de 0 à 360° par pas de 10°.

%% Programmation traditionnelle
clear; clc; close all;
figure(1);
for i = 1:36+1
   theta(i) = (i-1)*10;
   Y(i) = sind(theta(i));
end
plot(theta,Y); grid on;

%% Vectorisation
% Matlab génère la boucle afin de calculer une
% valeur de Y pour chaque valeur de theta.
clear; figure(2);
theta = 0:10:360;
Y = sind(theta);
plot(theta,Y); grid on;