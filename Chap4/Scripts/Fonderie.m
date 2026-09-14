%% Exercice A – Fonderie.txt
%
%% A1 – Affichage de la matrice
%
type Fonderie.txt

%%
% *Données lues*
clear; clc
D = load('Fonderie.txt'); [nr,nc]=size(D);
for i=1:nr
   fprintf('%7.2f',D(i,:));
   fprintf('\n')
end
%%
% Données arrondies au cm
for i=1:nr
   fprintf('%4.0f   ',D(i,:));
   fprintf('\n')
end

%% A2 – Calcul des moyennes
% Pièces mesurées à la 12e minute
Somme=0; Colonne = 1; % correspond à la 12e min
for i=1:nr
   Somme=Somme+D(i,Colonne);
end
fprintf('La moyenne est %.2f\n',Somme/nr);

%%
% Pièces mesurées de 14h à 15h
Somme=0; Ligne = 7;
for j=1:nc
   Somme=Somme+D(Ligne,j);
end
fprintf('La moyenne est %.2f\n',Somme/nc);

%%
% Ensemble des pièces mesurées
Somme=0;
for i=1:nr
   for j=1:nc
      Somme=Somme+D(i,j);
   end
end
fprintf('La moyenne est %.2f\n',Somme/nr/nc);

%% A3 – Manipulation d’éléments
% Indices et valeur du plus petit élément de la
% matrice.

Imin=1; Jmin=1;
for i = 1:nr
   for j = 1:nc
      if(D(Imin,Jmin) > D(i,j))
         Imin=i; Jmin=j;
      end
   end
end
fprintf(['\nLa plus petite est D(%d,%d)\net ',...
   'elle vaut %.2f\n'],Imin,Jmin,D(Imin,Jmin));
%%
% Pour les données de 11h à 12h (ligne 4), combien
% de fois la donnée de droite est supérieure à
% celle de gauche ?

combien=0; Ligne = 4;
for j=2:nc
   if(D(Ligne,j)>D(Ligne,j-1))
      combien=combien+1;
   end
end
fprintf('Réponse : %d fois.\n',combien);