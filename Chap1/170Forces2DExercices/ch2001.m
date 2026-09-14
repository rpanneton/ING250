%% Problème 2/1, Meriam p. 32
% <<..\ch2001.gif>>

%%
clear; close all; clc;
mF = 800; % N (norme de F)

%% Expression scalaire du vecteur F
theta= 90+35; % angle° selon la convention de atan2
fprintf('Norme = %.0f N, ',mF);
fprintf('angle thêta = %0.f°\n',theta);

%% Composantes scalaires de F
angle = 35; % angle° indiqué sur la figure
Fx = mF*sind(angle); Fy = mF*cosd(angle);
% Fx est négatif et Fy est positif selon la fig.
Fx = -Fx;
fprintf('Composantes scalaires\n');
fprintf('   Fx = %.0f N et ',Fx);
fprintf('Fy = %.0f N.\n',Fy);

%%
% Utiliser plutôt l'angle selon la convention de
% atan2. Calculer la composante en _x_ en
% appliquant le cosinus, et la composante en _y_
% en appliquant le sinus. Le signe (+) ou (-) est
% correct et ne requiert pas d'analyse.
%
%  Angle thêta = 90 + 35 degrés
Fx = mF*cosd(theta); Fy = mF*sind(theta);
fprintf('\nComposantes scalaires, reprise\n');
fprintf('   Fx = %.0f N et ',Fx);
fprintf('Fy = %.0f N.\n',Fy);

%% Expression vectorielle de F
% Vecteur unitaire – revoir la définition (page 7)
% et l'exercice 2/1 (page 29) de Meriam.
%
% Lorsque l'angle thêta en degrés est spécifié
% selon la convention de atan2, le signe de chaque
% composante est toujours correct.
nF = [cosd(theta),sind(theta)]; % vecteur unitaire
fprintf('Vecteur unitaire nF = %+.3fi  %+.3fj\n',nF);

% Vecteur F
F = mF*nF;
fprintf('Vecteur F = %+.0fi  %+.0fj N\n',F);
fprintf('\nComposantes vectorielles\n');
fprintf('   vecteurs Fx = %.0fi N et ',F(1));
fprintf('Fy = %.0fj N.\n',F(2));

%%
% Peut-on substituer les valeurs de Fx et Fy à
% celles de F(1) et F(2) ?
%
% Bien que ce soit les mêmes valeurs numériques,
% elles proviennent d'une démarche scalaire.
%
% Le vecteur *F* contient implicitement les
% composantes vectorielles tandis que les
% composantes scalaires doivent être calculées :
F

%%
% Rappel – Dans Matlab, un vecteur est une façon
%          de représenter les données.
%
% * Il s'écrit entre [crochets].
% * Il faut concevoir vous-même la sémantique,
% par exemple :
%
%  V = [3, 5] représente V = 3i + 5j en statique.
%  A = [3, 5] sont les coordonnées (3,5) de A, etc.