%% Problème 2/47, Meriam p. 47
% <<..\ch2047.gif>>
%
%% Étape 1 – Démarche vectorielle
clear; close all; clc
mF = 2; % lb (Norme)
angle = 20; % degrés convention de atan2
nF = [cosd(angle), sind(angle), 0]; F = nF*mF;
oB = 1.5*[0, 1, 0];
angleBA = 180-60; % degrés convention de atan2
BA = 10 * [cosd(angleBA), sind(angleBA), 0];
roA = oB + BA; % po
Mo = cross(roA,F);
fprintf('roA = %+6.2fi %+6.2fj %+6.2fk po\n',roA);
fprintf('  F = %+6.2fi %+6.2fj %+6.2fk lb\n',F);
fprintf(' Mo = %+6.2fi %+6.2fj %+6.2fk lb·po\n',Mo);

%% Étape 2 – Expression scalaire
fprintf('\nNorme de Mo = %.2f lb·po',norm(Mo));
MomentPositif = Mo(3) > 0; % variable logique
if(MomentPositif)
   fprintf(' dans le sens antihoraire\n');
else
   fprintf(' dans le sens horaire\n');
end

%% Mo – démarche scalaire (ajout)
% Appliquer le théorème de Varignon.
%
% * Évaluer les composantes rectangulaires de
% la force au point _A_.
% * Pour chacune, déterminer le bras de levier par
% rapport au point _O_.
%
% <<..\ch2047a.gif>>
%
clear; close all; clc
mF = 2; % lb (Norme)
Fx = mF*cosd(20); % lb
Fy = mF*sind(20); % lb
dx = 10*cosd(60); % po (bras de levier de Fy)
dy = 1.5+10*sind(60); % po (bras de levier de Fx)
Mo = Fx*dy + Fy*dx; % (sens antihoraire)
fprintf('Norme de Mo = %.2f lb·po',Mo);
fprintf(' dans le sens horaire\n');