%% Juillet à Inukjuak
clear; close all; clc;
Temperature = load('Juillet.dat');
plot(Temperature,'o-b');
grid on; % quadrillage
xlabel('Jour'); ylabel('T (°C)');
title('Température de juillet 2006 à Inukjuak');

%%
help plot