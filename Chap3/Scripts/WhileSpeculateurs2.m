%% Recherche de données
clear; clc; close all;
V = load('Speculateurs.txt');

%%
% La sentinelle 1 est identifiée (c'est faux).
Sentinelle1 = false; % = zéro
S = 0; % sommateur
k = 0; % compteur de données valides
j = 1;
while(V(j)~=60.3)
   k = k + Sentinelle1;
   S = S + V(j)*Sentinelle1;
   Sentinelle1 = Sentinelle1 || V(j)==60.2;
   j = j + 1;
end
fprintf('Nombre de données valides = %.0f\n',k);
fprintf('Moyenne = %.2f\n',S/k);

%%
% Le booléen sentinelle1 est utilisé comme une
% donnée numérique.