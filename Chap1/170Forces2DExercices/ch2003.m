%% Problème 2/3, Meriam p. 32
% <<..\ch2003.gif>>
%
% Déplacer le système d'axes _x_ et _y_ au début
% du vecteur.

%% Expression scalaire de F
clear; close all; clc;
mF = 4.8; % kN
ValeurEn_x = -3; ValeurEn_y = -4;
theta = atan2(ValeurEn_y,ValeurEn_x)*180/pi;
fprintf('Norme = %.0f kN, ',mF);
fprintf('angle thêta = %0.f°\n',theta);

%% Composantes scalaires du vecteur F
Fx = mF*cosd(theta); Fy = mF*sind(theta);
fprintf('\nComposantes scalaires\n');
fprintf('   Fx = %.2f kN et ',Fx);
fprintf('Fy = %.2f kN.\n',Fy);

%% Expression vectorielle de F
nF = [cosd(theta),sind(theta)]; % vecteur unitaire
fprintf('Vecteur unitaire nF = %+.3fi  %+.3fj\n',nF);
F = mF*nF;
fprintf('Vecteur F =  %+.2fi %+.2fj kN\n',F);
fprintf('\nComposantes vectorielles\n');
fprintf('   vecteurs Fx = %.2fi kN et ',F(1));
fprintf('Fy = %.2fj kN.\n',F(2));