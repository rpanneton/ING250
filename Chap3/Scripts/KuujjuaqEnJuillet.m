%% Températures mensuelles de juillet à Kuujjuaq
clear; close all; clc;
Temperature = load('Kuujjuaq.dat');
plot(Temperature,'db');
hold on; % afin d'ajouter la courbe suivante.
plot(Temperature,':m');
% grid on; pas de quadrillage
xlabel('ans');
ylabel('T (°C)');
title(['Température moyenne de juillet ',...
   'à Kuujjuaq']);
%%
help plot