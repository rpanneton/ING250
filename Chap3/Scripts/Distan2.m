% Distan2.m  - Voir Distan1.m
% Il s'agit d'un exemple d'utilisation
% de la fonction plot3.
% On utilise la vectorisation.
clear; close all;
x0=0;
vx0=0;
ax=1;
y0=0;
vy0=2;
ay=2;
t=linspace(0,10,300);
distx=x0+vx0*t+ax*t.^2;
disty=y0+vy0*t+ay*t.^2;
plot3(distx,disty,t);
grid on;
xlabel('X  (m/s)');
ylabel('Y  (m/s)');
zlabel('t  (s)');