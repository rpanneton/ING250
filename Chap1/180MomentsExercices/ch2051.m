%% Problème 2/51, Meriam p. 48
% <<..\ch2051.gif>>
%
%% Mo – démarche scalaire
% Déterminer l'angle bêta.
%
% <<..\ch2051a.gif>>
clear; clc
PE = 340*sind(40);
QE = 110*cosd(40);
OH = PE-QE;
BH = 360+OH; % hauteur
PO = 340*cosd(40);
CQ = 110*sind(40);
CH = CQ+PO; % largeur
beta = atan2(CH,BH)*180/pi; % degrés
fprintf('Angle bêta = %.1f°\n',beta);

%%
% *Calcul du moment*
%
% En déplaçant la force au point _B_ par
% transmissibilité, la composante Fy ne crée pas
% de moment.
%
% <<..\ch2051b.gif>>
mF = 4.5e3; % Norme de la force, N
Fx = mF*sind(beta);
d = 360e-3; % bras de levier, m
Mo = Fx*d;
fprintf('Norme de Mo = %.0f N·m',Mo);
fprintf(' dans le sens horaire\n');

%% Mo – démarche vectorielle
% La démarche vectorielle est similaire à la
% démarche scalaire, car il faut aussi calculer
% l'angle bêta. Elle est donc moins appropriée
% comme outil de résolution.
angle = 90+beta; % convention de atan2
F = mF*[cosd(angle), sind(angle), 0]; % N
roB = [0, -360e-3, 0]; % m
Mo = cross(roB,F); Norme = norm(Mo);
fprintf('roB = %+8.2fi %+8.2fj %+8.2fk m\n',roB);
fprintf('  F = %+8.2fi %+8.2fj %+8.2fk N\n',F);
fprintf('\nMo = %+8.2fi %+8.2fj %+8.2fk N·m\n',Mo);
fprintf('Norme de Mo = %.0f N·m',Norme);
MomentPositif = Mo(3) > 0;
if(MomentPositif)
   fprintf(' dans le sens antihoraire\n');
else
   fprintf(' dans le sens horaire\n');
end

%% Ajout – masse du baril
% $$ \sum M_O = 0 $$
%
% La masse du baril exerce un moment antihoraire
% au point _O_. La valeur absolue de la norme est la
% même que celle du moment fourni par le vérin
% hydraulique.
theta = 40; % degrés
d_horizontale =  (785+340)*cosd(theta)/1000; % m
FA = Norme/d_horizontale; % N
a = 9.821; % m/s² (Annexe D) à 37.5° de latitude
masse = FA/a;  %kg
fprintf('Masse du baril = %.0f kg\n',masse);