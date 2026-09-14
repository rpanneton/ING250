%% Problème 2/8, Meriam p. 33
% <<..\ch2008.gif>>

%%
clear; close all; clc
mF1 = 800; mF2 = 425; % Normes lb

%% Étape 1 – Démarche vectorielle
% Comme la résultante *R* est verticale, les
% composantes en _x_ de *F1* et *F2* sont égales
% et de signe opposé.
%
% Glisser le vecteur *F1* jusqu'à l'origine du
% système d'axes.
angleF1 = -70; % selon la convention de atan2.
% vecteur unitaire
nF1 = [cosd(angleF1), sind(angleF1)]; F1=mF1*nF1;
F2(1) = - F1(1);
F2(2) = - sqrt(mF2^2-F2(1)^2); % vers le bas
R = F1 + F2;
fprintf('F1 = %+5.0fi %+5.0fj lb\n',F1);
fprintf('F2 = %+5.0fi %+5.0fj lb\n',F2);
fprintf(' R = %+5.0fi %+5.0fj lb\n',R);

%% Étape 2 – Expression scalaire des vecteurs
angleF2 = atan2(F2(2),F2(1))*180/pi;
mR = norm(R); angleR = atan2(R(2),R(1))*180/pi;
fprintf('F1 = %5.f lb à %+.0f°\n',mF1,angleF1);
fprintf('F2 = %5.f lb à %+.0f° (thêta)\n',...
   mF2,angleF2);
fprintf('R  = %5.f lb à %+.0f°\n',mR,angleR);