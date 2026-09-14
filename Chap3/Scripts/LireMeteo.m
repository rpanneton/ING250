% Fichier LireMeteo.m
clear; clc; close all;
disp('Lire données 1er sept 2004')
sept2004=xlsread('Meteo.xls',-1);
heure=1:length(sept2004);
disp('Lire données 1er sept 2005')
sept2005=xlsread('Meteo.xls',-1);

plot(heure,sept2004,'o-r',heure,sept2005,'-*b');
legend('2004','2005');
xlabel('Heures')
ylabel('Température °C')
title('Température du 1^{er} septembre')
grid on;
axis([0,24,0,30]) % Force l'échelle en x et y
