%% Problème 2/38, Meriam p. 44
% <<..\ch2038a.gif>>
%

%% Démarche vectorielle
% *r* est un vecteur ayant comme origine _O_
% jusqu'au point _A_ (point d'application de F).
clear; close all; clc
r = [- 11, 1.5, 0]; % po  
mF = 120; % lb (Norme de F)
theta = -90 -30; % degrés
nF = [cosd(theta), sind(theta), 0]; F = nF*mF;
Mo = cross(r,F); Norme = norm(Mo);
fprintf(' r = %+6.1fi %+6.1fj %+6.1fk po\n',r);
fprintf(' F = %+6.1fi %+6.1fj %+6.1fk lb\n',F);
fprintf('Mo = %+6.1fi %+6.1fj %+6.1fk lb·po\n',Mo);
fprintf('\nNorme de Mo = %.0f lb·po',Norme);
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
clear; close all; clc
dx = 11; % po (bras de levier)
dy = 1.5; % po (bras de levier)
mF = 120; % lb (Norme de F)
theta = 30; % degrés
Fx = mF*sind(30); Fy = mF*cosd(theta);
Mo_1 = Fx*dy; % sens antihoraire
Mo_2 = Fy*dx; % sens antihoraire
Mo = Mo_1 + Mo_2;
fprintf('Norme de Mo = %.0f lb·po',Mo);
fprintf(' dans le sens antihoraire\n');