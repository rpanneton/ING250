%% Problème 2/29, Meriam p. 43

%% Étape 1 – Démarche vectorielle
% <<..\ch2029.gif>>
%
clear; close all; clc;

%%
% Calculer *M*_o_ = *r*_oA_ × *F*  équation (2/6)
%
% Spécifier un vecteur ayant comme origine le
% point (_O_) et l'autre extrémité en un point
% quelconque sur la ligne d'action de la force F.
%
% Exemple : le point _A_ (connu).
% Le vecteur *r* est -4 *i* +5 *j*.
%
% Pour effectuer le produit vectoriel, le vecteur
% doit avoir une représentation 3D. Il suffit
% s'ajouter 0 *k*.
%
% *r* = -4 *i* +5 *j* +0 *k*
%
% Il faut faire de même pour le vecteur *F*.

roA = [-4, 5, 0]; mF = 10; % kN (Norme)
theta = atan2(-3,4)*180/pi;
nF = [cosd(theta),sind(theta),0];% vecteur unitaire
F = mF*nF;
Mo = cross(roA,F);
fprintf('roA = %+6.1fi %+6.1fj %+6.1fk m\n',roA);
fprintf('  F = %+6.1fi %+6.1fj %+6.1fk kN\n',F);
fprintf(' Mo = %+6.1fi %+6.1fj %+6.1fk kN·m\n',Mo);

%% Étape 2 – Expression scalaire
Norme = norm(Mo);
fprintf('\nNorme de Mo = %.1f kN·m',Norme);
% Est-ce que le moment est positif ?
% Le résultat est caractérisé par une des deux
% valeurs possibles en logique binaire : vrai ou
% faux.
MomentPositif = Mo(3) > 0; % variable logique
% Mo(3) est le moment autour de l'axe des _z_.
if(MomentPositif) % si le moment est positif
   fprintf(' dans le sens antihoraire\n');
else % sinon
   fprintf(' dans le sens horaire\n');
end

%% Démarche scalaire (ajout)
% <<..\ch2029a.gif>>
%
% Le bras de levier est nul pour un point
% quelconque situé sur l'axe d'application de la
% force *F*. Les points _B_ et _C_ répondent à ce
% critère.
clear all; close all; clc;
mF = 10; % Norme de F en kN
A = [-4, 5]; % ce n'est pas un vecteur physique.
% C'est une structure de données 2D de Matlab,
% choisie pour représenter les coordonnées du
% point _A_.
B(1) = 0; % Le point B est situé aur l'axe des y.
pente = -3/4;
B(2) = A(2)-pente*(A(1)-B(1));
fprintf('Point B = (%.2f, %.2f)\n',B);

%%
% Au point B, la composante Fy ne contribue pas au
% moment et le bras de levier est B(2).
Fx = mF*4/5; Mo = Fx * B(2);
fprintf('Norme de Mo = %.0f kN·m',Mo);
fprintf(' dans le sens horaire\n');