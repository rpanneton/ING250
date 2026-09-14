%% Affichage de vecteurs nombres et caractères
%%
% Etoile est une matrice consituée de 10 rangées
% et 6 colonnes de caractères.
clear; clc; close all;
Etoile=[
   'Sirius';'Altair';'Pollux';'Becrux';'Castor'
   'Adhara';'Alioth';'Shaula';'Alkaid';'Alhena'];

%%
% La magnitude apparente est l'expression
% logarithmique du rapport de l'éclairement
% apparent, sur un récepteur donné, d'un astre
% considéré à celui d'un astre pris comme
% référence. – OLF
Magnitude=[
   -1.42; 0.77; 1.16; 1.28; 1.58
    1.63; 1.68; 1.71; 1.91; 1.92];
%
Distance =[
   8.7;   16;   33;  500;   47
   330;   49;  200;  190;   78]; % années-lumière

%%
% Afficher une ligne à la fois est la procédure
% habituelle pour afficher des vecteurs de nombres
% et de caractères sur une même ligne.
fprintf('Étoile  Distance  Magnitude\n');
fprintf('------  --------  ---------\n');
for i=1:length(Magnitude)
   fprintf('%s %8.1f %8.2f\n',Etoile(i,:),...
      Distance(i), Magnitude(i));
end
fprintf('------  --------  ---------\n');

%%
% Il n'est pas possible d'utiliser la
% vectorisation des formats.
%
%  fprintf('%s %9.1f %10.2f\n',Etoile,...
%      Distance, Magnitude);
%
%  Etoile(1) utilise %s
%  Etoile(2) utilise %9.1f, etc.
%   
% <<..\Feuilles.gif>>
