%% Problème 2/11, Meriam p. 34
% <<..\ch2011a.gif>>
%
% Glisser le vecteur F jusqu'au point _O_.
% Considérer le système d'axes _t_ et _n_ comme un
% système d'axes _x_ et _y_.

%% Expression scalaire du vecteur F
clear; close all; clc;
theta = -30 -10;
Ft = 75; % N (composante de F selon l'axe des t)
mF = Ft/cosd(theta); % Norme de F
fprintf('Norme = %.1f N, ',mF);
fprintf('angle thêta = %0.f°\n',theta);

%% Composantes scalaires de F
Fn = mF*sind(theta);
fprintf('Composantes scalaires\n');
fprintf('   Ft = %.0f N et ',Ft);
fprintf('Fn = %.0f N.\n',Fn);

%% Expression vectorielle de F
nF = [cosd(theta), sind(theta)];
fprintf('Vecteur unitaire nF = %+.3fi  %+.3fj\n',nF);
F = mF*nF;
fprintf('F =  %+.0fi %+.0fj N\n',F);
fprintf('\nComposantes vectorielles\n');
fprintf('   vecteurs Ft = %.0fi N et ',F(1));
fprintf('Fn = %.0fj N.\n',F(2));

fprintf('\nVérifier, norme de F = %.1f N\n',norm(F));