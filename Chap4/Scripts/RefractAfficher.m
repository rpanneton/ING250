%% Alliages pour hautes températures
%% Affichage de la matrice
clear; clc; close all;
M=load('Refract.dat');
fprintf(' Mvo    Sy    Kc     E   Tmax\n');
fprintf('---- ----- ----- ----- -----\n');
for i=1:size(M,1)
   fprintf('%4.1f',M(i,1));
   fprintf(' %5.0f',M(i,2:5)); % une rangée
   fprintf('\n');
end
fprintf('---- ----- ----- ----- -----\n');
%%
% Les pointillés permettent d'établir facilement
% le champ à réserver à chaque colonne.

% Ajout non demandé
fprintf('1234 12345 12345 12345 12345');
fprintf(' --> n col.\n');

%% Sy et Kc de l'alliage ayant le plus petit Tmax
j0 = 1;
for i = 2:length(M)
   if(M(i,5)<M(j0,5))
      j0 = i;
   end
end
fprintf('Propriétés de l''alliage n°%i\n',j0);
fprintf('   Tf = %.0f°C\n',M(j0,5));
fprintf('   Sy = %.0f MPa\n',M(j0,2));
fprintf('   Kc = %.0f MPa.m½\n',M(j0,3));
%%
% <<..\Feuilles.gif>>