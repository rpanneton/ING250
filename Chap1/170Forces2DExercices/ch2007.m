%% Problème 2/7, Meriam p. 33
% Calculer la résultante *R*.
%
% <<..\ch2007.gif>>

%% Étape 1 – Démarche vectorielle
% * Établir les vecteurs unitaires selon *F1* et
% *F2*.
%
% * Déterminer *F1* et *F2* et les additionner pour
% obtenir *R*.
%
% <<..\ch2007a.gif>>
%
clear; close all; clc
mF1 = 3; mF2 = 2; % kN (Normes)
angleF1 = -180+60; % degrés
angleF2 = +180-30; % selon la convention de atan2
nF1 = [cosd(angleF1), sind(angleF1)]; F1= mF1*nF1;
nF2 = [cosd(angleF2), sind(angleF2)]; F2= mF2*nF2;
R = F1 + F2;
fprintf('F1 = %+5.2fi %+5.2fj kN\n',F1);
fprintf('F2 = %+5.2fi %+5.2fj kN\n',F2);
fprintf('R  = %+5.2fi %+5.2fj kN\n',R);

%% Étape 2 – Expression scalaire des vecteurs
mR = norm(R);
angleR = atan2(R(2),R(1))*180/pi;
fprintf('F1 = %.2f kN à %+.0f°\n',mF1,angleF1);
fprintf('F2 = %.2f kN à %+.0f°\n',mF2,angleF2);
fprintf('R  = %.2f kN à %+.0f°\n',mR,angleR);