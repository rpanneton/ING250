%% Problème 2/49, Meriam p. 48
% <<..\ch2049.gif>>
%
%% Mo – démarche scalaire
% Appliquer le théorème de Varignon.
%
% * Évaluer les composantes rectangulaires de
% la force au point _B_.
% * Pour chacune, déterminer le bras de levier par
% rapport à _O_.
% * Poser le système des axes _x_ et _y_ au point
% _O_.
clear; clc
OB = 635e-3; OA = OB; AC = 740e-3; OC = OA+AC;% m
k = 60; % N/m (constante élastique de la bande)
%%
% <<..\ch2049a.gif>>
theta = atan2(OB,OC)*180/pi; % degrés
BC = OC/cosd(theta); % m
mF = k*(BC-AC); % Norme de la force, N
% BC = longueur finale, AC = longueur initiale.
% Fx : pas de moment
Fy = mF*cosd(theta); % N
Mo = OB*Fy;
fprintf('Norme de Mo = %.1f N·m',Mo);
fprintf(' dans le sens antihoraire\n');

%% Mo – démarche vectorielle
angle = -90 + theta; % degrés convention de atan2
F = mF*[cosd(angle), sind(angle), 0]; % N
roB = [-OB, 0, 0]; % m
Mo = cross(roB,F); Norme = norm(Mo);
fprintf('roB = %+6.2fi %+6.2fj %+6.2fk m\n',roB);
fprintf('  F = %+6.2fi %+6.2fj %+6.2fk N\n',F);
fprintf('\nMo = %+6.2fi %+6.2fj %+6.2fk N·m\n',Mo);
fprintf('Norme de Mo = %.1f N·m',Norme);
MomentPositif = Mo(3) > 0;
if(MomentPositif)
   fprintf(' dans le sens antihoraire\n');
else
   fprintf(' dans le sens horaire\n');
end