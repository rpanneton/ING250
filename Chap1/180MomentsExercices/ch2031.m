%% Problème 2/31, Meriam p. 43
% Le problème ressemble à l'exemple 2/5.

%% Étape 1 – Démarche vectorielle
%
% <<..\ch2031.gif>>
%
clear; close all; clc
mF = 50; % N (Norme)
A =[-15,-20]; B =[40,10]; % les points
theta = atan2(B(2)-A(2),B(1)-A(1))*180/pi;
roB = [B(1)-0,B(2)-0, 0]; % mm (voir note)
nF = [cosd(theta),sind(theta), 0]; F = nF*mF;
Mo = cross(roB,F);
fprintf('roB = %+4.1fi %+4.1fj %+4.1fk mm\n',roB);
fprintf('F   = %+4.1fi %+4.1fj %+4.1fk N\n',F);
fprintf('Mo  = %+4.1fi %+4.1fj %+4.1fk N·mm\n',Mo);

%% Étape 2 – Expression scalaire
fprintf('\nNorme de Mo = %.0f N·mm',norm(Mo));
MomentPositif = Mo(3) > 0;  % variable logique
if(MomentPositif) % si le moment est positif
   fprintf(' dans le sens antihoraire\n');
else % sinon
   fprintf(' dans le sens horaire\n');
end

%% Démarche scalaire (ajout, théorème de Varignon)
% Déterminer les composantes rectangulaires de
% *F*. Les bras de levier sont connus au point _A_
% et au point _B_.
% En appliquant le théorème de Varignon à l'un de
% ces points, on obtient la Norme du moment Mo.
clear all; close all; clc
%%
% <<..\ch2031b.gif>>
%
mF = 50; % N (Norme)
A =[-15,-20]; B =[40,10]; % les points
theta = atan2(B(2)-A(2),B(1)-A(1))*180/pi;
Fx = mF*cosd(theta); Fy = mF*sind(theta);

%%
% Théorème appliqué au point A
Mo = 20*Fx -15*Fy;
fprintf('Norme de Mo = %.0f N·mm',Mo);
fprintf(' dans le sens antihoraire\n');

%%
% Théorème appliqué au point B
Mo = -10*Fx + 40*Fy; % convention (+) antihoraire
fprintf('Norme de Mo = %.0f N·mm',Mo);
fprintf(' dans le sens antihoraire\n');