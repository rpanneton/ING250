%% Problème 2/53, Meriam p. 48
% <<..\ch2053.gif>>
%
%% Démarche scalaire
% Appliquer le théorème de Varignon.
%
% * Évaluer les composantes rectangulaires de
% la force au point _A_.
% * Pour chacune, déterminer le bras de levier par
% rapport au point _O_.
% * Poser le système des axes _x_ et _y_ au point
% _O_.
clear; clc

%%
% <<..\ch2053a.gif>>
mF = 5; % Norme de la force, kN
theta = 30; % degrés
Fx = mF*sind(theta); Fy = mF*cosd(theta); % N
Mo = Fx*60 +Fy*90; % kN·mm = N·m
fprintf('Norme de Mo causé par F = %.1f N·m',Mo);
fprintf(' dans le sens antihoraire\n');

%%
% $$ M_O = mT \left( T_x*60 + T_y*120 \right) $$ 
%
% mT est le Norme de *T*.
theta = atan2(5,2)*180/pi; % degrés
mT = Mo/...
   (cosd(theta)*60 + sind(theta)*120);
fprintf('Norme de T = %.2f kN',mT);

%% Vérification par la démarche vectorielle
% Utilisation de la démarche vectorielle
%
% Moment causé par *F* (MoF)
angleF = -90-30; % degrés convention de atan2
F = mF*[cosd(angleF), sind(angleF), 0]; % kN
roA = [-90, 60, 0]; % mm
MoF=cross(roA,F); NormeMoF=norm(MoF);% N·m
% (kN·mm = N·m)
fprintf('roA = %+6.2fi %+6.2fj %+6.2fk m\n',roA);
fprintf('  F = %+6.2fi %+6.2fj %+6.2fk N\n',F);
fprintf(...
   '\nMoF = %+6.2fi %+6.2fj %+6.2fk N·m\n',MoF);
fprintf('Norme de MoF = %.1f N·m',NormeMoF);
MomentPositif = MoF(3) > 0;
if(MomentPositif)
   fprintf(' dans le sens antihoraire\n');
else
   fprintf(' dans le sens horaire\n');
end

%%
% Moment causé par *T* (MoT)
roB = [120,60,0]; % mm
V = [2, -5, 0]; 
% Vecteur unitaire dans la direction de T
n = [2,-5,0]/norm([2,-5,0]);
T = mT*n;
MoT=cross(roB,T); NormeMoT=norm(MoT);% N·m
fprintf('roB = %+6.2fi %+6.2fj %+6.2fk m\n',roB);
fprintf('  T = %+6.2fi %+6.2fj %+6.2fk N\n',T);
fprintf(...
   '\nMoT = %+6.2fi %+6.2fj %+6.2fk N·m\n',MoT);
fprintf('Norme de MoT = %.1f N·m',NormeMoT);
MomentPositif = MoT(3) > 0;
if(MomentPositif)
   fprintf(' dans le sens antihoraire\n');
else
   fprintf(' dans le sens horaire\n');
end
%%
% Noter que Matlab effectue automatiquement
% l'inversion de matrices. Il est donc possible
% d'utiliser la démarche vectorielle pour calculer
% le Norme de *T*.
%
%  MoT = -MoF = cross(roB,T) = cross(rOB,mT*n)
%  -MoF = mT*cross(rOB,n)
%  (mT est le Norme de T.)
NormeDeT = -MoF/cross(roB,n)