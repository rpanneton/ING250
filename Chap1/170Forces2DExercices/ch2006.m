%% Problème 2/6, Meriam p. 32
% <<..\ch2006.gif>>
%
% Le vecteur est dans le plan xy. Déplacer le
% système d'axes _x_ et _y_ au début du vecteur.

%% Expression scalaire du vecteur F
clear; close all; clc;
mF = 1800; % N
ValeurEn_x = -3; ValeurEn_y = -4;
theta = atan2(ValeurEn_y,ValeurEn_x)*180/pi;
fprintf('Norme = %.0f N, ',mF);
fprintf('angle thêta = %0.f°\n',theta);

%% Composantes scalaires de F
Fx = mF*cosd(theta); Fy = mF*sind(theta);
fprintf('Composantes scalaires\n');
fprintf('   Fx = %.0f N et ',Fx);
fprintf('Fy = %.0f N.\n',Fy);

%% Expression vectorielle de F
nF = [cosd(theta),sind(theta)]; % vecteur unitaire
fprintf('Vecteur unitaire nF = %+.3fi  %+.3fj\n',nF);
F = mF*nF;
fprintf('F =  %+.0fi %+.0fj N\n',F);
fprintf('\nComposantes vectorielles\n');
fprintf('   vecteurs Fx = %.0fi N et ',F(1));
fprintf('Fy = %.0fj N.\n',F(2));