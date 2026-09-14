% Ch_fscan.m  Lire un fichier
%    comme une grande chaîne.
clear; clc
fclose('all'); % Ferme tous les fichiers.
fid=fopen('Sommeil.txt','r');
Texte=fscanf(fid,'%c');
Auteure=Texte(1820:1848)
fclose(fid);
% Compte le nombre de lettres e dans Texte
NombreDeLettre_e=0;
for i=1:length(Texte)
   if(Texte(i)=='e')
      NombreDeLettre_e=NombreDeLettre_e+1;
   end
end
fprintf(1,'%s %d\n',...
   'Nombre de caractères « e » :',...
   NombreDeLettre_e);