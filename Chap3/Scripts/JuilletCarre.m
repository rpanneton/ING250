%% Juillet à Inukjuak
clear; close all; clc;
Temperature = load('Juillet.dat');
plot(Temperature,'sr');
hold on; % afin d'ajouter la courbe suivante.
plot(Temperature,'--b');
% Pas de quadrillage, ne rien écrire ou encore
% écrire grid off.
grid off;
xlabel('Jour'); ylabel('T (°C)');
title('Température de juillet 2006 à Inukjuak');
%%
help plot