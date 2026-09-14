%% Problème 2/15, Meriam p. 35
% <<..\ch2015.gif>>

%%
clear; close all; clc;
mF = 120; % lb

%% Étape 1 – Démarche vectorielle
% * Dessiner un système des axes au point A.
% * Construire le parallélogramme.
% * Le ressort est en tension vers la droite. Il n'a pas
% de composante en y.
%
% <<..\ch2015a.gif>>
%
angleF1 = -180 + 60; % convention de atan2
mF1 = 120; % lb
angleF2 = 0;
nF1 = [cosd(angleF1),sind(angleF1)]; F1 = nF1*mF1;

%%
% * La composante en x de F2 est égale et de signe
% opposé à F1.
% * La composante en y de F2 est zéro.
F2(1) = -F1(1); F2(2) = 0; % lb
R = F1 + F2;
fprintf('F1 = %+6.1fi %+6.1fj lb\n',F1);
fprintf('F2 = %+6.1fi %+6.1fj lb\n',F2);
fprintf(' R = %+6.1fi %+6.1fj lb\n',R);

%% Étape 2 – Expression scalaire des vecteurs
mR = norm(R); angleR = atan2(R(2),R(1))*180/pi;
mF2 = norm(F2);
fprintf('F1 = %6.1f lb à %+.0f°\n',mF1,angleF1);
fprintf('F2 = %6.1f lb à %+.0f°\n',mF2,angleF2);
fprintf('R  = %6.1f lb à %+.0f°\n',mR,angleR);