% Fichier Patate4.m
clear;clc
V=[3 8 3 6 1 0 5 1 5 1 7 3 8 0 5];
% Boucle comptée + redéfinition du compteur
somme=0;
for i=1:length(V)
   if(V(i)==0)
      i=length(V)+1;
      % Détection du zéro et on veut forcer
      % la fin de la boucle en écrivant un
      % indice > la valeur de fin de boucle.
   else
      somme=somme+V(i);
   end
end
somme % Afficher