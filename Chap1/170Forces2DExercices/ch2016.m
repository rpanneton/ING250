%% Problème 2/16, Meriam p. 35
% <<..\ch2016.gif>>
%
% Orienter le système d'axes _x_ et _y_ selon
% *D* et *L*.

%%
clear; close all; clc;
mL = 50; % lb (Norme)
% mL/mD = 10 selon l'énoncé du problème
mD = mL/10; % (Norme)

%% Étape 1 – Démarche vectorielle
% Établir les vecteurs unitaires de *L* et *D*.
% Calculer *R*.
nL = [0,1]; L = nL*mL; angleL = +90;
nD = [1,0]; D = nD*mD; angleD = 0;
R = L + D;
fprintf('L = %+5.1fi %+5.1fj lb\n',L);
fprintf('D = %+5.1fi %+5.1fj lb\n',D);
fprintf('R = %+5.1fi %+5.1fj lb\n',R);

%% Étape 2 – Expression scalaire des vecteurs
mR = norm(R); angleR = atan2(R(2),R(1))*180/pi;
fprintf('L = %5.1f lb à %+.0f°\n',mL,angleL);
fprintf('D = %5.1f lb à %+.0f°\n',mD,angleD);
fprintf('R = %5.1f lb à %+.0f°\n',mR,angleR);