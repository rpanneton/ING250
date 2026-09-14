%% Problème 2/52, Meriam p. 48
% <<..\ch2052.gif>>
%
%% Étape 1 – Démarche vectorielle
clear; close all; clc
mP = 90; % N (Norme de la force)
theta = 15; % degrés, rotation du système des axes

%%
% Moment *Mc*
P = mP*[0, -1, 0]; % N
rCD = [150, 0, 0]/1000; % m
Mc = cross(rCD,P);
fprintf('rCD = %+8.3fi %+8.3fj %+8.3fk m\n',rCD);
fprintf('  P = %+8.3fi %+8.3fj %+8.3fk N\n',P);
fprintf(' Mc = %+8.3fi %+8.3fj %+8.3fk N·m\n',Mc);

%% Étape 2 – Expression scalaire
fprintf('\nNorme de Mc = %.2f N·m',norm(Mc));
MomentPositif = Mc(3) > 0; % variable logique
if(MomentPositif)
   fprintf(' dans le sens antihoraire\n');
else
   fprintf(' dans le sens horaire\n');
end

%%
% Moment *MB*
%
% <<..\ch2052a.gif>>
%
angleBCQ = (90-45) -theta; % degrés
angle = 90-angleBCQ; % degrés convention de atan2
rBC = [450*cosd(angle),450*sind(angle),0]/1000;%m
rBD = rBC+rCD; % m
MB = cross(rBD,P); Norme = norm(MB);
fprintf('rCD = %+8.3fi %+8.3fj %+8.3fk m\n',rCD);
fprintf('rBC = %+8.3fi %+8.3fj %+8.3fk m\n',rBC);
fprintf('rBD = %+8.3fi %+8.3fj %+8.3fk m\n',rBD);
fprintf('  P = %+8.3fi %+8.3fj %+8.3fk N\n',P);
fprintf(' MB = %+8.3fi %+8.3fj %+8.3fk N·m\n',MB);
fprintf('\nNorme de MB = %.2f N·m',Norme);
MomentPositif = MB(3) > 0;
if(MomentPositif)
   fprintf(' dans le sens antihoraire\n');
else
   fprintf(' dans le sens horaire\n');
end

%%
% Moment *MA*
%
% L'angle de 60° devient (60-15=45°) selon la
% convention de atan2 et en tenant compte de la
% rotation du système des axes.
angle = 60-15;
rAB = [550*cosd(angle),550*sind(angle),0]/1000;%m
rAC = rAB + rBC + rCD; % m
MA = cross(rAC,P); Norme = norm(MA);
fprintf('rAB = %+8.3fi %+8.3fj %+8.3fk m\n',rAB);
fprintf('rBC = %+8.3fi %+8.3fj %+8.3fk m\n',rBC);
fprintf('rCD = %+8.3fi %+8.3fj %+8.3fk m\n',rCD);
fprintf('rAC = %+8.3fi %+8.3fj %+8.3fk m\n',rAC);
fprintf('  P = %+8.3fi %+8.3fj %+8.3fk N\n',P);
fprintf(' MA = %+8.3fi %+8.3fj %+8.3fk N·m\n',MA);
fprintf('\nNorme de MB = %.2f N·m',Norme);
MomentPositif = MA(3) > 0;
if(MomentPositif)
   fprintf(' dans le sens antihoraire\n');
else
   fprintf(' dans le sens horaire\n');
end

%% Démarche scalaire (ajout)
% 
% <<..\ch2052a.gif>>
%
% * Poser le système des axes _x_ et _y_ au
% point _C_ avec un angle de 15°.
% * Calculer les bras de levier.
%
% Moment *Mc*
clear all; close all; clc
mP = 90; % N (Norme de la force)
QH = 150e-3; % m (bras de levier)
Mc = QH*mP; fprintf('Norme de Mc = %.2f N·m',Mc);
fprintf(' dans le sens horaire\n');

%%
% Moment *MB*
theta = 15; % degrés, rotation du système des axes
angleBCQ = (90-45) -theta; % degrés
BQ = 450e-3 * sind(angleBCQ);
BH = BQ+QH; % m (bras de levier)
MB = mP*BH; fprintf('Norme de MB = %.2f N·m',MB);
fprintf(' dans le sens horaire\n');

%%
% Moment *MA*
angleEAB = (90-60) +theta; % degrés
EB = 550e-3 * sind(angleEAB);
EH = EB+BQ+QH; % m (bras de levier)
MA = mP*EH; fprintf('Norme de MA = %.2f N·m',MA);
fprintf(' dans le sens horaire\n');

