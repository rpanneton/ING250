% Fichier Patate1.m
clear;clc
V=[3 8 3 6 1 0 5 1 5 1 7 3 8 0 5];
% Boucle comptée
somme=0;
for i=1:length(V)
   if(V(i)==0)
      somme % Afficher
   else
      somme=somme+V(i);
   end
end