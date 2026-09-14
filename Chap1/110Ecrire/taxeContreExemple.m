% Fichier taxeContreExemple.m
% Calcul du prix total de la vente

% Efface les variables de la mémoire de Matlab.
clear
% Pour une meilleure présentation des résultats
format bank 

% Taux des taxes fédérale et provinciale
tf = 5/100; % taux de la  taxe fédérale
tp= 9.975/100; % taux de la taxe provinciale

% Demander le prix à l'utilisateur.
V=input('V ? ');

% Calculer les taxes fédérale et provinciale.
T1=V*tf % calcul de la taxe fédérale
T2=V*tp % calcul de la taxe provincial

% Le total est la somme du prix de vente et des
% deux taxes.

T=V+T1+T2 