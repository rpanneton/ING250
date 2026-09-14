%% Exemple de lecture et d'analyse de données
%%
clear; clc
Fichier='Distance.dat'; D=load(Fichier);
%% Pour les 5 derniers éléments de D
Dernieres=D(end-5:end); disp(Dernieres');
%%
% * Fonctions sum et mean
Somme = sum(Dernieres)
Moyenne = mean(Dernieres)
%%
% * Somme et moyenne avec une boucle
Somme = 0;
for i = 1:length(Dernieres)
   Somme = Somme + Dernieres(i);
end
Somme, Moyenne = Somme/length(Dernieres)
%%
% La fonction *length* permet d'obtenir le nombre
% exact d'éléments de *Dernieres*, peu importe le
% choix initial. L'utilisation du nombre 5
% rendrait le programme moins robuste.
%% Parmi tous les éléments de D
for i = 1:9:length(D) % non demandé
   fprintf('%4d ',D(i:i+8)); fprintf('\n');
end
%%
% * Indice et valeur du plus petit élément
indice=1;
for i=2:length(D)
   if(D(indice)>D(i))
      indice=i;
   end
end
indice
PlusPetiteValeur=D(indice)
%%
% * Nombre d’éléments compris entre 250 et 400,
% bornes incluses
combien=0; % compteur
for i=1:length(D)
   if(D(i)>=250 && D(i)<=400)
      combien=combien+1;
   end
end
combien