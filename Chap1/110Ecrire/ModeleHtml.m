%% Modèle Html
% Texte...
% Remarquer l'espace entre % et T

%% Premier paragraphe
clear; clc
theta = 30; % degrés
fprintf('Thêta = %.f\n',theta);

%% Second paragraphe
% Calcul du sinus de *thêta*.
LeSinus = sind(theta);
fprintf('sin(thêta) = %.2f\n',LeSinus);

%%
% *Troisième paragraphe*
%
% Une cellule sans titre n'apparaît
% pas dans la table des matières.
disp('L''affichage s''effectue')
disp('dans chaque cellule.')