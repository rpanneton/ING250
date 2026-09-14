%% Problème 2/4, Meriam p. 32
% <<..\ch2004.gif>>
%
% Déplacer le système d'axes _x_ et _y_au point
% _A_ et résoudre le problème.
%
% Les coordonnées cartésiennes de A et B sont
% exprimées sous la forme d'un tableau 2D de
% Matlab ou d'un vecteur. Noter la différence de
% sémantique. Ce ne sont pas des vecteurs en
% statique.

%% Expression scalaire du vecteur F
clear; close all; clc;
mF = 4800; % lb (norme de F)
A =[-15,-20]; B = [30,10]; % coordonnées
theta = atan2(B(2)-A(2), B(1)-A(1))*180/pi;
fprintf('Norme = %.0f lb, ',mF);
fprintf('angle thêta = %0.f°\n',theta);

%% Composantes scalaires du vecteur F
Fx = mF*cosd(theta); Fy = mF*sind(theta);
fprintf('\nComposantes scalaires\n');
fprintf('   Fx = %.0f lb et ',Fx);
fprintf('Fy = %.0f lb.\n',Fy);

%% Expression vectorielle de F
nF = [cosd(theta),sind(theta)]; % vecteur unitaire
fprintf('Vecteur unitaire nF = %+.3fi  %+.3fj\n',nF);
F = mF*nF;
fprintf('Vecteur F = %+.0fi  %+.0fj lb\n',F);
fprintf('\nComposantes vectorielles\n');
fprintf('   vecteurs Fx = %.0fi lb et ',F(1));
fprintf('Fy = %.0fj lb.\n',F(2));