% Fichier Patate2.m
clear;clc
V=[3 8 3 6 1 0 5 1 5 1 7 3 8 0 5];
% Boucle comptée + instruction break
somme=0;
for i=1:length(V)
   if(V(i)==0)
      break % Détection du zéro
      % Force la fin de la boucle
   else
      somme=somme+V(i);
   end
end
somme % Afficher