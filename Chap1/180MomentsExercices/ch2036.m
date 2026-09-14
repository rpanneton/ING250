%% Problème 2/36, Meriam p. 44
% <<..\ch2036.gif>>
%

%% Étape 1 – Démarche vectorielle
% *r* = vecteur ayant comme origine le centre du
% boulon jusqu'au point d'application de F.
clear; close all; clc
r = [0.200, 0.030, 0]; % m 
mF = 250; % N (Norme de F)
theta = -90 -15; % degrés
nF = [cosd(theta), sind(theta), 0]; F = nF*mF;
Mo = cross(r,F);
fprintf(' r = %+7.2fi %+7.2fj %+7.2fk m\n',r);
fprintf(' F = %+7.2fi %+7.2fj %+7.2fk kN\n',F);
fprintf('Mo = %+7.2fi %+7.2fj %+7.2fk N·m\n',Mo);

%% Étape 2 – Expression scalaire
Norme = norm(Mo);
fprintf('\nNorme de Mo = %.1f N·m',Norme);
MomentPositif = Mo(3) > 0; % variable logique
if(MomentPositif)
   fprintf(' dans le sens antihoraire\n');
else
   fprintf(' dans le sens horaire\n');
end

%% Démarche scalaire (ajout)
% Remplacer la force par ses composantes
% rectangulaires et appliquer le théorème de
% Varignon.
%
% <<..\ch2036a.gif>>
clear all; close all; clc
dx = 0.200; % m (bras de levier)
dy = 0.030; % m (bras de levier)
mF = 250; % N (Norme de F)
Fx = mF*sind(15); Fy = mF*cosd(15);
Mo_1 = -Fx*dy; % sens horaire
Mo_2 = Fy*dx; % sens antihoraire
Mo = Mo_1 + Mo_2;
fprintf('Norme de Mo = %.1f N·m',Mo);
fprintf(' dans le sens horaire\n');
