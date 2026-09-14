%% Problème 2/54, Meriam p. 49
%
% <<..\ch2054a.gif>>
%
%% Étape 1 – Démarche vectorielle
clear; close all; clc
mF = 3550; % norme de la force, lb
OA = 8/2; AB = 14; % po
DOA = 90-30; % degrés
DA = OA*sind(DOA); % po
DBA = asind(DA/AB); % degrés
angleF = -90 + DBA;
nF = [cosd(angleF), sind(angleF), 0]; F = nF*mF;
roA = 4*[cosd(30), sind(30), 0]; % po
Mo=cross(roA,F);
fprintf('roA = %+6.0fi %+6.0fj %+6.0fk m\n',roA);
fprintf('  F = %+6.0fi %+6.0fj %+6.0fk N\n',F);
fprintf(' Mo = %+6.0fi %+6.0fj %+6.0fk lb·po\n',Mo);

%% Étape 2 – Expression scalaire
norme=norm(Mo);% lb·po
fprintf('\nNorme de Mo = %.0f lb·po',norme);
MomentPositif = Mo(3) > 0; % variable logique
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
% * Le système des axes _x_ et _y_ est au point
% _O_.
clear all; close all; clc

%%
% <<..\ch2054a.gif>>
mF = 3550; % norme de la force, lb
OA = 8/2; AB = 14; % po
DOA = 90-30; % degrés
DA = OA*sind(DOA); % po
DBA = asind(DA/AB); % degrés

%%
% *Trois façons de calculer* *_Mo_* :
%
% Au point A
Fx = mF*sind(DBA); Fy = mF*cosd(DBA);
AE = OA*sind(30); OD = AE;
OE = DA;
Mo = Fx*AE + Fy*OE;
fprintf('Norme de Mo = %.0f lb·po',Mo);
fprintf(' dans le sens horaire\n');

%%
% Au point B
DB = AB*cosd(DBA);
OB = OD+DB;
Mo = Fx*OB;
fprintf('Norme de Mo = %.0f lb·po',Mo);
fprintf(' dans le sens horaire\n');

%%
% Au point H
EH = AE*tand(DBA);
OH = OE+EH;
Mo = Fy*OH;
fprintf('Norme de Mo = %.0f lb·po',Mo);
fprintf(' dans le sens horaire\n');