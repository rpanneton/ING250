%% WhileHelice.m
%%
clear; close all;
Matrice = load('Helice.dat');
Angle = Matrice(:,1);
Coefficient = Matrice(:,2);
i = 1;
while(i<=length(Angle))
   Angle(i) = Angle(i)*180/pi;
   i = i+1;
end
%%
plot(Angle,Coefficient,'-b');
hold on; % Permet de tracer sur la même figure.
plot(Angle,Coefficient,'or');
grid on;
xlabel('angle  degrés');
ylabel('Coefficient de poussée');
title('Coefficient de poussée = f (angle)');