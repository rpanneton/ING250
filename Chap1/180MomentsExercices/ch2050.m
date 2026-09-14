%% Problème 2/50, Meriam p. 48
% <<..\ch2050.gif>>
%

%% Étape 1 – Démarche vectorielle
clear; close all; clc
mF = 90; % Norme de la force, N
theta = 15; % degrés
angle = +90 + theta; % degrés convention de atan2
nF = [cosd(angle), sind(angle), 0]; F = nF*mF;
roA = [600, -800, 0]/1000; % m
Mo = cross(roA,F);
fprintf('roA = %+6.2fi %+6.2fj %+6.2fk m\n',roA);
fprintf('  F = %+6.2fi %+6.2fj %+6.2fk N\n',F);
fprintf(' Mo = %+6.2fi %+6.2fj %+6.2fk N·m\n',Mo);

%% Étape 2 – Expression scalaire
Norme = norm(Mo);
fprintf('\nNorme de Mo = %.1f N·m',Norme);
MomentPositif = Mo(3) > 0; % variable logique
if(MomentPositif)
   fprintf(' dans le sens antihoraire\n');
else
   fprintf(' dans le sens horaire\n');
end

%% Mo – démarche scalaire (ajout)
% Appliquer le théorème de Varignon.
%
% * Évaluer les composantes rectangulaires de
% la force au point _A_.
% * Pour chacune, déterminer le bras de levier par
% rapport au point _O_.
% * Poser le système des axes _x_ et _y_ au point
% _O_.
clear all; close all; clc
OB = 800e-3; BA =600e-3; % m
%%
% <<..\ch2050a.gif>>
mF = 90; % Norme de la force, N
theta = 15; % degrés
Fx = mF*sind(theta); Fy = mF*cosd(theta); % N
Mo = +BA*Fy -OB*Fx ;
fprintf('Norme de Mo = %.1f N·m',Mo);
fprintf(' dans le sens antihoraire\n');