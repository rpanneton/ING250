%% Problème 2/27, Meriam p. 37
% <<..\ch2027.gif>>

%% Étape 1 – Démarche vectorielle
clear; close all; clc;
mF1 = 8; % kN (norme)
angleF1 = atan2(-60,40)*180/pi;
angleF2 = atan2(-40,-50)*180/pi;
nF1 = [cosd(angleF1), sind(angleF1)]; F1 = mF1*nF1;
nF2 = [cosd(angleF2), sind(angleF2)];
% Les composantes en x de F1 et F2 sont égales et
% de signe opposé.
F2(1) = - F1(1);
mF2 = F2(1)/nF2(1); F2(2) = mF2*nF2(2);
R = F1 + F2;
fprintf('F1 = %+6.2fi %+6.2fj kN\n',F1);
fprintf('F2 = %+6.2fi %+6.2fj kN\n',F2);
fprintf('R  = %+6.2fi %+6.2fj kN\n',R);

%% Étape 2 – Expression scalaire des vecteurs
mR = norm(R); angleR = atan2(R(2),R(1))*180/pi;
fprintf('F1 = %5.2f kN à %+.0f°\n',mF1,angleF1);
fprintf('F2 = %5.2f kN à %+.0f°\n',mF2,angleF2);
fprintf('R  = %5.2f kN à %+.0f°\n',mR,angleR);