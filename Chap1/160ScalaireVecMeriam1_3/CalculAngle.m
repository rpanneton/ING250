%% Calcul de l'angle et de la norme de V
% <<..\VecteurV.jpg>>
%%
clear; clc
Vx = -3; Vy = 5; V = [Vx,Vy]
%%
% Signification :
% *V* = -3 *i* +5 *j*

%% Calcul de l'angle
% Il existe trois fonctions Matlab pour calculer
% l'angle :
%
% * atan2 : réponse en radians
% * atand : réponse en degrés
% * atan  : réponse en radians
%
% L'instruction atan2 est la tangente inverse de
% l'angle thêta en radians. La réponse varie de
% -pi à +pi.
%
% <<..\atan2Convention.gif>>
theta = 180/pi*atan2(Vy,Vx)

%%
% En statique, spécifier l'angle par rapport à
% l'axe des _x_. La fonction *atan2* respecte cette
% convention.

%%
% Pour les fonctions suivantes, il faut tenir
% compte du quadrant pour obtenir une réponse
% selon l'axe des _x_. Leur utilisation n'est pas
% recommandée.
thetaBis = atand(Vy/Vx)
thetaTer = 180/pi*atan(Vy/Vx)

%% Norme de V
% * L'instruction _sqrt_ signifie la racine carrée
% (square root). 
% * La fonction _norm_ calcule aussi le norme de V.
NormeDeV = sqrt(Vx^2+Vy^2)
NormeDeVBis = norm(V)

%% Vecteur unitaire de V
% * sin et cos nécessitent un angle en radians.
% * sind et cosd exigent un angle en degrés.
VecteurUnitaireDeV = [cosd(theta),sind(theta)]
clear V
V = NormeDeV*VecteurUnitaireDeV
%%
% Bien sûr, on retrouve les valeurs initiales de
% *V*.

%% Calculs des composantes rectangulaires
clear Vx Vy
Vx = NormeDeV*cosd(theta)
Vy = NormeDeV*sind(theta)
%%
% Information sur une fonction :
%
%  >> doc atan2
%  >> help sind, etc.