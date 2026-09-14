%% Problème 2/33, Meriam p. 43
% <<..\ch2033.gif>>

%% Étape 1 – Démarche vectorielle
clear; close all; clc
mF = 120; % N
theta = -(20+15); % degrés
nF = [cosd(theta), sind(theta), 0]; F = nF*mF;
rOA = [0, 150, 0]/1000; % m
Mo = cross(rOA,F);
fprintf('rOA = %+6.2fi %+6.2fj %+6.2fk m\n',rOA);
fprintf('  F = %+6.2fi %+6.2fj %+6.2fk kN\n',F);
fprintf(' Mo = %+6.2fi %+6.2fj %+6.2fk N·m\n',Mo);

%% Étape 2 – Expression scalaire
Norme = norm(Mo);
fprintf('\nNorme de Mo = %.2f N·m',Norme);
MomentPositif = Mo(3) > 0; % variable logique
if(MomentPositif) % si le moment est positif
   fprintf(' dans le sens antihoraire\n');
else % sinon
   fprintf(' dans le sens horaire\n');
end

%% Démarche scalaire (ajout)
% * Poser le système des axes sur le point _O_ en
% alignant l'axe des _y_ sur la poignée.
% * Utiliser le principe de transmissibilité et
% glisser la force *F* jusqu'au point _A_.
% * Déterminer les composantes rectangulaires de
% *F*.
%
% La force _Fx_ est est la seule qui contribue au
% moment Mo dans le sens horaire. Le bras de
% levier est de 150 mm.
%
% <<..\ch2033a.gif>>
clear all; close all; clc
mF = 120; % N
theta = -(20+15); % degrés
Fx = mF*cosd(theta);
r = 0.150; % m  (bras de levier)
NormeMo = r*Fx;
fprintf('Norme de Mo = %.2f N·m',NormeMo);
fprintf(' dans le sens horaire\n');