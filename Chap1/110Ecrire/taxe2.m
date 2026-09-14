% Fichier taxe2.m
% Calcule TPS, TVQ et Total
% Prix est demandé par Matlab.
clear  % Vide la mémoire
format bank % 2 chifres après le point
Prix=input('Écrire le prix : ');
TPS=Prix*0.05
TVQ=Prix*9.975/100
PrixTotal=Prix+TPS+TVQ