%% Fichier Etoile0.m – définition des données
clear;
Etoile=[
   'Sirius';'Altair';'Pollux';'Becrux';'Castor'
   'Adhara';'Alioth';'Shaula';'Alkaid';'Alhena'];
%%
% Etoile est une matrice consituée de 10 rangées
% et 6 colonnes de caractères.
Magnitude=[
   -1.42; 0.77; 1.16; 1.28; 1.58
    1.63; 1.68; 1.71; 1.91; 1.92];
%%
% La magnitude apparente est l'expression
% logarithmique du rapport de l'éclairement
% apparent, sur un récepteur donné, d'un astre
% considéré à celui d'un astre pris comme
% référence. – OLF
%
Distance =[
   8.7;   16;   33;  500;   47
   330;   49;  200;  190;   78]; % années-lumière