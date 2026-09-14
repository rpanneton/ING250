% Sommeil.m 
clear; clc
fclose('all'); % Ferme tous les fichiers.
fid=fopen('Sommeil.txt','r');
Texte=fscanf(fid,'%c');
fclose(fid);
% Chacun des mots est séparé par un espace.
% Il n'y a pas de saut de ligne ou de paragraphque.
% Solution classique :
Somme=0;
for i=1:length(Texte)
   if(Texte(i)==' ')
      Somme=Somme+1
   end
end
fprintf(1,'Nombre de mots : %d\n',Somme);