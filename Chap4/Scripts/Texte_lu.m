%Texte_lu
%Exemple de lecture avec textread
%Pas besoin de fopen
clear;clc
[nom,distance,magnitude] = ...
 textread('Etoile.dat','%6c %n %n');
%chaîne de caractères, nombre, nombre
for i=1:length(distance)
   fprintf(1,'%s %8.1f %8.2f \n',...
      nom(i,:),distance(i),magnitude(i));
end