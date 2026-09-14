%% Composantes obliques
% Déterminer les composante de la force
% selon les axes obliques 1 et 2.
%
% Comparer la méthode du parallélogramme avec la
% méthode du triangle.

%%
clear; close all; clc;
run Oblique1 % Tracé : axes, vecteur F et lignes

%% Méthode du parallélogramme
Oblique2 % Tracé du parallélogramme
%%
% En utilisant le vecteur *F* comme diagonale des
% 2 obliques, il n'y a qu'une façon de tracer les
% composantes selon la loi du parallélogramme en
% partant de l'origine du vecteur (0,0).
Oblique3 % Calcul de F1 et F2

%%
% La somme des composantes produit *F*.
R = F1 + F2; Oblique4 % Affiche les vecteurs.

%% Méthode du triangle
close all; Oblique1; Oblique2; Oblique5

%% Conclusion
Oblique4
%%
% La méthode du triangle vérifie également que *F*
% = *F1* + *F2*.
% 
% Cependant , la force *F2* n'est pas dans la
% ligne d'action de l'axe 2.
%
% En utilisant la méthode du parallélogramme, le
% tracé des composantes respecte la ligne d'action
% de *F1* et *F2*. Il faut donc utiliser la
% méthode du parallélogramme pour un vecteur lié
% (_fixed vector_) comme *F*.