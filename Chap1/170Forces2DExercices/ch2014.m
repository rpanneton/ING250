%% Problème 2/14, Meriam p. 34
% <<..\ch2014.gif>>
%
% Considérer le système d'axes _t_ et _n_ comme un
% système d'axes _x_ et _y_ ayant subi une
% rotation.

%% Expression scalaire du vecteur F
clear; close all; clc;
mF = 2; % kN (1 kN = 1000 N)
theta = -20 -30;
% selon l'axe t en respectant la convention de atan2
fprintf('Norme = %.1f N, ',mF);
fprintf('angle thêta = %0.f°\n',theta);

%% Composantes scalaires de F
Ft = mF*cosd(theta); Fn = mF*sind(theta);
fprintf('Composantes scalaires\n');
fprintf('   Ft = %+5.2f kN et ',Ft);
fprintf('Fn = %+5.2f kN\n',Fn);

%% Expression vectorielle de F
nF = [cosd(theta), sind(theta)]; F = nF*mF;
fprintf('Vecteur unitaire nF = %+.3fi  %+.3fj\n',nF);
fprintf('F  = %+5.2fi %+5.2fj kN\n',F);
fprintf('\nComposantes vectorielles\n');
fprintf('   vecteurs Ft = %+5.2fi kN',F(1));
fprintf(' et Fn = %+5.2fj kN\n',F(2));