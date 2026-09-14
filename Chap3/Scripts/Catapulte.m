%% Catapulte
% Distance (m) parcourue parcourue par une même
% masse et une même catapulte
%
% * Conserver les données supérieures à 10,
% * afficher les données retenues,
% * calculer la moyenne.
%%
clear; clc
D = [9, 11, 13, 7, 12, 13];
%% Programmation classique
k = 0; somme = 0;
for i = 1:length(D)
   if(D(i) > 10)
      k = k + 1;
      Retenues(k) = D(i);
      somme = somme + D(i);
   end
end
moyenne = somme/k, Retenues
%% Vectorisation
   D
   booleen = D > 10
% Filtre logique
   RR = D(booleen)
   moyenne = mean(RR)
%% Une seule ligne
moy = mean(D(D>10))