%% Problème 2/20, Meriam p. 36
% <<..\ch2020.gif>>

%% Étape 1 – Démarche vectorielle
clear; close all; clc;
angleF = atan2(-6,8)*180/pi; % degrés
angleP = atan2(4,8)*180/pi;
angleR = 0;
mF = 400; % lb (norme)
nF = [cosd(angleF),sind(angleF)]; F = nF*mF;
nP = [cosd(angleP),sind(angleP)];
%%
% Selon l'énoncé du problème, la composante en _y_
% de *R* est zéro. Ainsi La composante en _y_ de
% *P* doit être égale et de sens opposé à *F*.
P(2) = -F(2); % et P(2) = nP(2)*mP
mP = P(2)/nP(2);   P(1) = nP(1)*mP;
R = F + P;
fprintf('F = %+5.1fi %+5.1fj lb\n',F);
fprintf('P = %+5.1fi %+5.1fj lb\n',P);
fprintf('R = %+5.1fi %+5.1fj lb\n',R);

%% Étape 2 – Expression scalaire des vecteurs
mR = norm(R);
fprintf('F = %5.1f lb à %+.0f°\n',mF,angleF);
fprintf('P = %5.1f lb à %+.0f°\n',mP,angleP);
fprintf('R = %5.1f lb à %+.0f°\n',mR,angleR);