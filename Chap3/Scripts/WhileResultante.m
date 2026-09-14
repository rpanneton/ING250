%% Problème 2/19 modifié, Meriam p. 35
% <<..\WhileResultante.gif>>

%% Étape 1 – Démarche vectorielle
clear; close all; clc;
mF1 = 400; mF2 = 600; % N (module)
angleF1 = -90; angleF2 = -30; % degrés
nF1 = [cosd(angleF1),sind(angleF1)]; F1 = mF1*nF1;
nF2 = [cosd(angleF2),sind(angleF2)]; F2 = nF2*mF2;
R = F1+F2; mR = norm(R);
while(mR > 650)
   angleF2 = angleF2 + 0.1;
   mF2 = mF2 - 0.1*5; % N
   nF2 = [cosd(angleF2),sind(angleF2)]; F2 = nF2*mF2;
   R = F1+F2; mR = norm(R);
end

%% Étape 2 – Expression scalaire des vecteurs

angleR = atan2(R(2),R(1))*180/pi;
fprintf('F1 = %6.1f N à %+.1f°\n',mF1,angleF1);
fprintf('F2 = %6.1f N à %+.1f°\n',mF2,angleF2);
fprintf('R  = %6.1f N à %+.1f°\n',mR,angleR);