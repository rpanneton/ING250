% Fichier taxe1.m
% Calcule TPS, TVQ et Total
% Prix doit être défini dans
% la fenêtre Matlab.
format bank % force 2 chiffres après point déc.
TPS=Prix*0.05
TVQ=Prix*9.975/100
PrixTotal=Prix+TPS+TVQ