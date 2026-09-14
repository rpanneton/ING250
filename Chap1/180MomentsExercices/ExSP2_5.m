%% Moment d'une force de 600 N
% Calculer le norme du moment de la force par
% rapport au point _O_.
%
% <<..\MeriamSP2_5a.gif>>


%% Initialisation 
clear; clc
mF = 600; % N (norme)

%% Déterminer d
% Déterminer la perpendiculaire à la ligne
% d'action de la force. La longueur de _d_ est la
% somme des segments OC + CD.
%
% CD est // à AB et possède la même longueur.
%
% <<..\MeriamSP2_5b.gif>>
OC = 4 * cosd(40); AB = 2 * sind(40); CD = AB;
d = OC + CD; fprintf('d = %.2f m\n',d);
Mo = mF * d;
fprintf('Norme de Mo = %.0f N·m\n',Mo);

%% Théorème de Varignon avec Fx et Fy
% Calculer les composantes rectangulaires de F au
% point _A_.
%
% <<..\MeriamSP2_5c.gif>>
F1 = mF*cosd(40); % C'est Fx
F2 = mF*sind(40); % C'est Fy
Mo = F1*4 + F2*2; 
fprintf('Norme de Mo = %.0f N·m\n',Mo);

%% Varignon – éliminer Fy
% En déplaçant la force de 600 N au point _B_, on
% élimine la composante F2 (en _y_).
%
% <<..\MeriamSP2_5d.gif>>
d1 = 4 + 2*tand(40); fprintf('d1 = %.2f m\n',d1);
Mo = F1*d1;
fprintf('Norme de Mo = %.0f N·m\n',Mo);

%% Varignon – éliminer Fx
% En déplaçant la force de 600 N au point _C_, on
% élimine la composante F1 (en _x_).
%
% <<..\MeriamSP2_5d.gif>>
d2 = 2 + 4/tand(40); fprintf('d2 = %.2f m\n',d2);
Mo = F2*d2;
fprintf('Norme de Mo = %.0f N·m\n',Mo);

%% Approche vectorielle
r = [2,4]; fprintf('r = %.0fi %+.0fj m\n',r);
F = mF*[cosd(-40), sind(-40)];
fprintf('F = %.0fi %+.0fj N\n',F);

%%
% Utilisation des fonctions _cross_ et _norm_
%
% Note : La fonction _cross_ ne s'applique qu'à
% des vecteurs 3D. Lorsqu'un problème est dans le
% plan _x_ et _y_, il suffit d'ajouter zéro comme
% coordonnée en _z_, ce qui permet d'utiliser la
% fonction.
r(3)=0; F(3)=0;
VecteurMo = cross(r,F);
norme = norm(VecteurMo);
fprintf('Mo = %.0fi %+.0fj %+.0fk N·m\n',VecteurMo);
fprintf('Norme de Mo = %.0f N·m\n',norme);

%%
% Calcul détaillé du produit vectoriel
Mo=[+r(2)*F(3)-r(3)*F(2),...
   -r(1)*F(3)+r(3)*F(1),...
   +r(1)*F(2)-r(2)*F(1)];
fprintf('Mo = %.0fi %+.0fj %+.0fk N·m\n',Mo);
normeDeMo = sqrt(Mo(3)^2);
fprintf('Norme de Mo = %.0f N·m\n',normeDeMo);