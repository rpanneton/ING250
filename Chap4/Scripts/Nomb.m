%% Affichage du vecteur B
clear; clc
rand('seed',sum(100*clock));
n_val=5+round(15*rand(1));
disp('Affichage par défaut :')
B=-50+100*rand(n_val,1), clear n_val
LongueurDeB = length(B)

%% Faire exécuter
% Constater que B est différent à chaque
% exécution.
%
% *Compléter ci-dessous.*