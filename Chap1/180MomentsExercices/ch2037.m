%% Problème 2/37, Meriam p. 44
% <<..\ch2037a.gif>>
%
% Poser l'axe des _x_ parallèle à la clé.

%% Étape 1 – Démarche vectorielle
% *r* = vecteur ayant comme origine le centre du
% boulon jusqu'au point d'application de F.
clear; close all; clc
r = [0.095, 0, 0]; % m  
mF = 140; % N
angle = (90-25) + 15; % degrés p/r à l'axe des x
nF = [cosd(angle), sind(angle), 0]; F = nF*mF;
Mo = cross(r,F);
fprintf(' r = %+7.2fi %+7.2fj %+7.2fk m\n',r);
fprintf(' F = %+7.2fi %+7.2fj %+7.2fk kN\n',F);
fprintf('Mo = %+7.2fi %+7.2fj %+7.2fk N·m\n',Mo);

%% Étape 2 – Expression scalaire
fprintf('\nNorme de Mo = %.2f N·m',norm(Mo));
MomentPositif = Mo(3) > 0; % variable logique
if(MomentPositif)
   fprintf(' dans le sens antihoraire\n');
else
   fprintf(' dans le sens horaire\n');
end

%% Démarche scalaire (ajout)
%  
% Poser l'axe des _x_ dans le sens de la clé.
% Remplacer la force par ses composantes
% rectangulaires et appliquer le théorème de
% Varignon.
%
% <<..\ch2037a.gif>>
%
% Fx ne contribue pas au moment.
clear all; close all; clc
theta = 25-15; % degrés
mF = 140; % N
d = 0.095; %m (bras de levier)
Fy = mF*cosd(theta); Mo = Fy*d;
fprintf('Norme de Mo = %.2f N·m',Mo);
fprintf(' dans le sens antihoraire\n');