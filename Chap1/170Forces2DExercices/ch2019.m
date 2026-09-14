%% Problème 2/19, Meriam p. 35
% <<..\ch2019.gif>>

%% Étape 1 – Démarche vectorielle
clear; close all; clc;
mF1 = 400; mF2 = 600; % N (normes)
angleF1 = -90; angleF2 = -30; % degrés
nF1 = [cosd(angleF1),sind(angleF1)]; F1 = mF1*nF1;
nF2 = [cosd(angleF2),sind(angleF2)]; F2 = nF2*mF2;
R = F1+F2;
fprintf('F1 = %+4.0fi %+4.0fj N\n',F1);
fprintf('F2 = %+4.0fi %+4.0fj N\n',F2);
fprintf(' R = %+4.0fi %+4.0fj N\n',R);

%% Étape 2 – Expression scalaire des vecteurs
mR = norm(R);
angleR = atan2(R(2),R(1))*180/pi;
fprintf('F1 = %4.0f N à %+.0f°\n',mF1,angleF1);
fprintf('F2 = %4.0f N à %+.0f°\n',mF2,angleF2);
fprintf('R  = %4.0f N à %+.0f°\n',mR,angleR);