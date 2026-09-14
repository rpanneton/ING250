%% Moyenne et valeur maximale de Fonderie.txt

%% Affichage avec 2 boucles
clear; clc; close all
M = load('Fonderie.txt');
[nRangees,nColonnes] = size(M);

for i = 1:nRangees
   for j = 1:nColonnes
      fprintf('%5.2f  ',M(i,j));
   end
   fprintf('\n');
end
fprintf('- - - - - - - - - - - - - - - - -\n');

%% Affichage avec une boucle et la vectorisation
for i = 1:nRangees
   fprintf('%5.2f  ',M(i,:)); fprintf('\n');
end
fprintf('- - - - - - - - - - - - - - - - -\n');