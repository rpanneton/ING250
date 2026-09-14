clear; clc % Mise en contexte
F = input('F ? ');
Angle = atand(F(2)/F(1)) % degrés
AngleSelonConvention = ...
   atan2(F(2),F(1))*180/pi