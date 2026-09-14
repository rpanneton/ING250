%% Problème 2/13, Meriam p. 34
% <<..\ch2013.gif>>

%% Étape 1 – Démarche vectorielle
% * Établir les vecteurs unitaires de *F1* et *F2*.
% * Déterminer les vecteurs *F1* et *F2*
% et les additionner.
clear; close all; clc;
mF1 = 3; mF2 = 7; % kips (kilopounds = 1000 lb)
angleF1 = 180 - 30; angleF2 = 0 - 45;
% selon la convention de atan2
nF1= [cosd(angleF1),sind(angleF1)]; F1= nF1*mF1;
nF2= [cosd(angleF2),sind(angleF2)]; F2= nF2*mF2;
R = F1 + F2;
fprintf('F1 = %+5.2fi %+5.2fj kips\n',F1);
fprintf('F2 = %+5.2fi %+5.2fj kips\n',F2);
fprintf(' R = %+5.2fi %+5.2fj kips\n',R);

%% Étape 2 – Expression scalaire des vecteurs
mR = norm(R);
angleR = atan2(R(2),R(1))*180/pi;
fprintf('F1 = %5.2f kips à %+.0f°\n',mF1,angleF1);
fprintf('F2 = %5.2f kips à %+.0f°\n',mF2,angleF2);
fprintf('R  = %5.2f kips à %+.0f°\n',mR,angleR);