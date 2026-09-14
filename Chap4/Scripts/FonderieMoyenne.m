%% Moyenne et valeur maximale de Fonderie.txt

%% Affichage
clear; clc; close all
M = load('Fonderie.txt');
[nRangees,nColonnes] = size(M);

for i = 1:nRangees
   fprintf('%5.2f  ',M(i,:)); fprintf('\n');
end
fprintf('- - - - - - - - - - - - - - - - -\n');

%% Moyenne
S = 0;
for i = 1:nRangees
   for j = 1:nColonnes
      S = S + M(i,j);
   end
end
fprintf('Moyenne = %.2f\n',S/nRangees/nColonnes);
fprintf('- - - - - - - - - - - - - - - - -\n');

%% Indices du maximum de M
imax = 1; jmax = 1;
for i = 1:nRangees
   for j = 1:nColonnes
      if(M(i,j)>M(imax,jmax))
         imax=i; jmax=j;
      end
   end
end
fprintf(['Le maximum est ',...
   'M(%.0f,%.0f) = %.2f\n'],...
   imax, jmax, M(imax,jmax));
      