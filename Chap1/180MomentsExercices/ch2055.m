%% Problème 2/55, Meriam p. 49
% <<..\ch2055.gif>>
%
%% Étape 1 – Démarche vectorielle
clear; close all; clc
angleF = -90+30; % degrés convention de atan2
mF = 120; % norme de la force, N
nF = [cosd(angleF), sind(angleF), 0]; F = nF*mF;
dx = 70 + 150 +70; % mm
dy = 25 + 70 + 70 +25; % mm
roA = [dx, dy 0]; % mm
Mo=cross(roA,F)/1000;
fprintf('roA = %+6.1fi %+6.1fj %+6.1fk mm\n',roA);
fprintf('  F = %+6.1fi %+6.1fj %+6.1fk N\n',F);
fprintf(' Mo = %+6.1fi %+6.1fj %+6.1fk N·m\n',Mo);

%% Étape 2 – Expression scalaire
norme=norm(Mo);% N·m
fprintf('\nNorme de Mo = %.1f N·m',norme);
MomentPositif = Mo(3) > 0;  % variable logique
if(MomentPositif)
   fprintf(' dans le sens antihoraire\n');
else
   fprintf(' dans le sens horaire\n');
end

%% Démarche scalaire (ajout)
% Appliquer le théorème de Varignon.
%
% * Évaluer les composantes rectangulaires de
% la force au point _A_.
% * Pour chacune, déterminer le bras de levier par
% rapport au point _O_.
% * Poser le système des axes _x_ et _y_ au point
% _O_.

%%
% <<..\ch2055a.gif>>
clear all; close all; clc
mF = 120; % norme de la force, N
alpha = 30; % degrés
dx = 70 + 150 +70; % mm
dy = 25 + 70 + 70 +25; % mm
Fx = mF*sind(alpha); Fy = mF*cosd(alpha); % N
Mo = (Fx*dy +Fy*dx)/1000; % N·m
fprintf('Norme de Mo = %.1f N·m',Mo);
fprintf(' dans le sens horaire\n');