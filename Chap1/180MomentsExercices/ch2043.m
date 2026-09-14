%% Problème 2/43, Meriam p. 46
% <<..\ch2043.gif>>
%
%% Étape 1 – Démarche vectorielle
% Le produit vectoriel est *M* = *r × F*.
%
% Déterminer un vecteur *r* ayant comme origine le
% point _O_ et se terminant sur le point A situé
% sur la ligne d'action de la force.
%
% L'origine du système des axes est au point _O_.
clear; close all; clc
OA = 10; % pi
AH = OA * cosd(30); % pi
roA = [5, AH, 0]; % pi
mF = 780;
theta = -180+20;% degrés
nF = [cosd(theta), sind(theta), 0]; F = nF*mF;
Mo = cross(roA,F);
fprintf('roA = %+6.0fi %+6.0fj %+6.0fk pi\n',roA);
fprintf('  F = %+6.0fi %+6.0fj %+6.0fk lb\n',F);
fprintf(' Mo = %+6.0fi %+6.0fj %+6.0fk lb·pi\n',Mo);

%% Étape 2 – Expression scalaire
Norme = norm(Mo);
fprintf('\nNorme de Mo = %.0f lb·pi',Norme);
MomentPositif = Mo(3) > 0;  % variable logique
if(MomentPositif)
   fprintf(' dans le sens antihoraire\n');
else
   fprintf(' dans le sens horaire\n');
end

%% Démarche scalaire (ajout)
% Déterminer le bras de levier OE
%
% <<..\ch2043a.gif>>
%
clear all; close all; clc
OA = 10; % pi
OE = OA * sind(40); % pi
mF = 780; % lb (tension dans le câble de levage)
Mo = mF * OE; % lb·pi, équation (2/5)
fprintf('Norme de Mo = %.0f lb·pi',Mo);
fprintf(' dans le sens antihoraire\n');