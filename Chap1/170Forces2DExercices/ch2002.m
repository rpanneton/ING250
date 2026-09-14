%% Problème 2/2, Meriam p. 32
% <<..\ch2002.gif>>
%
% Déplacer le système d'axes _x_ et _y_ au point
% _A_ et résoudre le problème.

%%
clear; close all; clc;
mF = 600; % lb (norme de F)

%% Expression scalaire du vecteur F
theta= -30; % degrés selon la convention de atan2
fprintf('Norme = %.0f lb, ',mF);
fprintf('angle thêta = %0.f°\n',theta);

%%
% Est-ce que thêta = 330° est accepté ?
%
% C'est une réponse qui permet le calcul correct
% des composantes scalaires et du vecteur
% unitaire.
%
% Elle n'est cependant pas acceptée (0 point dans
% un test), car elle ne respecte pas la convention
% de atan2. Pour plus d'informations :
%
%  >> doc atan2

%% Composantes scalaires du vecteur F
Fx = mF*cosd(theta); Fy = mF*sind(theta);
fprintf('\nComposantes scalaires\n');
fprintf('   Fx = %.0f lb et ',Fx);
fprintf('Fy = %.0f lb.\n',Fy);

%% Expression vectorielle de F
nF = [cosd(theta),sind(theta)]; % vecteur unitaire
fprintf('Vecteur unitaire nF = %+.3fi  %+.3fj\n',nF);
F = mF*nF; % Vecteur F
fprintf('Vecteur F = %+.0fi  %+.0fj lb\n',F);
fprintf(['\nF est décrit par ses composantes ',...
   'vectorielles\n']);
fprintf('   vecteurs Fx = %.0fi lb et ',F(1));
fprintf('Fy = %.0fj lb.\n',F(2));