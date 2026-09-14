% Sommeil.m 
clear; clc
fclose('all'); % Ferme tous les fichiers.
fid=fopen('Sommeil.txt','r');
Texte=fscanf(fid,'%c');
fclose(fid);
% Chacun des mots est séparé par un espace.
% Il n'y a pas de saut de ligne ou de paragraphe.

% Solution classique :
Somme=1; %{Bonjour} = 1 mots et pas d'espace.
for i=1:length(Texte)
   if(Texte(i)==' ')
      Somme=Somme+1;
   end
end
fprintf(1,'Nombre de mots : %d\n',Somme);
disp('Fonction spécialisée : isspace')
nombreDeMots=sum(isspace(Texte))+1
disp('Filtre logique')
nombreDeMots=length(Texte(Texte==' '))+1

% Nombre de mots par phrase
% Fonction spécialisée :
phrases=length(findstr('.',Texte))
% Filtre logique
phrases=length(Texte(Texte=='.'))
moyenne=nombreDeMots/phrases