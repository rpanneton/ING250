% Fichier taxe3.m
% Calcule TPS, TVQ et Total
% Nom et Prix sont demandés.
clear % Vide la mémoire
home
NomClient=input('Nom ? ','s');
Prix=input('Écrire le prix : ');
format bank; % 2 chiffres après le point
TPS=Prix*0.05
TVQ=Prix*9.975/100
PrixTotal=Prix+TPS+TVQ
format short g; % valeur par défaut
disp(['Merci ',NomClient,' !'])
% Concaténation de 2 constantes
%   chaînes de caractères et
%   d'une variable caractère.