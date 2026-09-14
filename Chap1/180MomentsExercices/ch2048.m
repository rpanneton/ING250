%% Problème 2/48, Meriam p. 47
% <<..\ch2048.gif>>
%
% Revoir l'exemple 2/5.

%% Étape 1 – Démarche vectorielle
clear; close all; clc
mF = 200; % N (Norme)
angle = 180-15; % degrés convention de atan2
nF = [cosd(angle), sind(angle), 0]; F = nF*mF;
rAB = [400e-3, 280e-3, 0]; % m
MA = cross(rAB,F);
fprintf('rAB = %+6.2fi %+6.2fj %+6.2fk m\n',rAB);
fprintf('  F = %+6.2fi %+6.2fj %+6.2fk N\n',F);
fprintf(' MA = %+6.2fi %+6.2fj %+6.2fk N·m\n',MA);

%% Étape 2 – Expression scalaire
Norme = norm(MA);
fprintf('\nNorme de MA = %.1f N·m',Norme);
MomentPositif = MA(3) > 0; % variable logique
if(MomentPositif)
   fprintf(' dans le sens antihoraire\n');
else
   fprintf(' dans le sens horaire\n');
end
%% Démarche scalaire (ajout)
% *MA – démarche scalaire nº1*
%
% Appliquer le théorème de Varignon.
%
% * Évaluer les composantes rectangulaires de
% la force au point _B_.
% * Pour chacune, déterminer le bras de levier par
% rapport à _A_.
%
% <<..\ch2048a.gif>>
%
clear; close all; clc
mF = 200; % N (Norme)
Fx = mF*cosd(15); Fy = mF*sind(15); % N
dx = 400e-3; % m (bras de levier de Fy)
dy = 280e-3; % m (bras de levier de Fx)
MA = Fx*dy + Fy*dx; % (sens antihoraire)
fprintf('Norme de MA = %.1f N·m',MA);
fprintf(' dans le sens antihoraire\n');

%%
% *MA – démarche scalaire nº2*
%
% Utiliser le principe de transmissibilité pour
% déplacer le vecteur sur l'axe des _x_, ce qui
% élimine le moment de la composante _Fx_.
%
% <<..\ch2048b.gif>>
%
AC = 400e-3; CB = 280e-3; CD = CB/tand(15); % m
MA = (AC+CD)*Fy;
fprintf('Norme de MA = %.1f N·m',MA);
fprintf(' dans le sens antihoraire\n');

%%
% *MA – démarche scalaire nº3*
%
% Utiliser le principe de transmissibilité pour
% déplacer le vecteur sur l'axe des _y_, ce qui
% élimine le moment de la composante _Fy_.
%
% <<..\ch2048c.gif>>
%
AH = 280e-3; HB = 400e-3; HE = HB*tand(15); % m
MA = (AH+HE)*Fx;
fprintf('Norme de MA = %.1f N·m',MA);
fprintf(' dans le sens antihoraire\n');

