%% Problème 2/30, Meriam p. 43

%% Étape 1 – Démarche vectorielle
% Calculer *M*_A_ = *r*_AB_ × *F* (éq. 2/6)
% 
% <<..\ch2030.gif>>
clear; close all; clc
rAB = [35,0,0]; % po (voir note)
mF = 200; % Norme de F en lb
angle = -90-30; % convention de atan2
nF = [cosd(angle),sind(angle),0]; F = mF*nF;
MA = cross(rAB,F);
%%
% Selon les vecteurs unitaires *i*, *j* et *k*
fprintf('rAB = %+5.0fi %+5.0fj %+5.0fk po\n',rAB);
fprintf('  F = %+5.0fi %+5.0fj %+5.0fk lb\n',F);
fprintf(' MA = %+5.0fi %+5.0fj %+5.0fk lb·po\n',MA);

%%
% Note : La fonction _cross_ ne s'applique qu'à
% des vecteurs 3D. Lorsqu'un problème est dans le
% plan _x_ et _y_, il suffit d'ajouter zéro comme
% coordonnée en _z_, ce qui permet d'utiliser la
% fonction. Les vecteurs rAB et F comportent ainsi
% 3 éléments.

%% Étape 2 – Expression scalaire
NormeMA = norm(MA);
fprintf('\nNorme de MA = %.0f lb·po',NormeMA);
% Est-ce que le moment est positif ?
% Le résultat est caractérisé par une des deux
% valeurs possibles en logique binaire : vrai ou
% faux.
MomentPositif = MA(3) > 0; % variable logique
% MA(3) est le moment autour de l'axe des _z_.
if(MomentPositif) % si le moment est positif
   fprintf(' dans le sens antihoraire\n');
else % sinon
   fprintf(' dans le sens horaire\n');
end

%% Démarche scalaire (ajout)
% L'angle CAB (30°) et le segment AB (35'') sont
% connus.
%
% Appliquer l'équation _M_ = _F d_  (éq. 2/5).
%
% <<..\ch2030a.gif>>
clear all; close all; clc
mF = 200; % Norme de F en lb
AB = 35; % po
AC = AB*cosd(30); % po (le bras de levier d)
MA = mF*AC; % lb·po
fprintf('Norme de MA = %.0f lb·po',MA);
fprintf(' dans le sens horaire\n');