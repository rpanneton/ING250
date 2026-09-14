%% Problème 2/24, Meriam p. 36
% <<..\ch2024.gif>>

%% Démarche scalaire
% Déterminer l'angle A (i.e. BAO). Dans le
% triangle OBA, les côtés OB et OA sont connus
% ainsi que l'angle O (180°-60°=120°) situé en
% face du côté inconnu AB.
%
% Utiliser la loi des cosinus pour déterminer le
% côté AB. Par la suite, un angle étant connu et
% tous les côtés, appliquer la loi des sinus pour
% déterminer l'angle A.
%
% Considérer le système des axes _t_ et _n_ comme
% un système des axes _x_ et _y_. Tracer le
% parallélogramme et calculer Ft et Fn.
clear; close all; clc;
%%
% <<..\ch2024a.gif>>
%
% Appliquer la loi des cosinus pour déterminer AB
%
%  AB^2 = OB^2 + OA^2 - 2*OB*OA*cosd(120)
OB = 1.2; OA = 1.5; % m
AB = sqrt(OB^2 + OA^2 - 2*OB*OA*cosd(120));
%%
% Identifier A par la loi des sinus.
%
%  sind(A)/OB = sind(120)/AB
A =asind(OB*sind(120)/AB);
fprintf('Angle A = %.1f\n',A);
%%
% Calculer les composantes rectangulaires selon
% les axes _t_ et _n_.
%
% <<..\ch2024b.gif>>
mF = 750; % N (Norme)
% Selon la convention de atan2 appliquée à l'axe t
Ft = mF*cosd(180-A);  Fn = mF*sind(180-A);

Q1 = 'Composantes de F selon les axes t et n\n';
fprintf(Q1);
fprintf('Ft = %+.0f N  et  ',Ft);
fprintf('Fn = %+.0f N\n',Fn);

%% Démarche vectorielle
% Après avoir déterminé l'angle A selon la
% convention de atan2 appliquée à l'axe t,
% calculer le vecteur unitaire dans la direction
% de AB.

n = [cosd(180-A), sind(180-A)];
F = mF*n;
fprintf('F = %+0.fi %+.0fj N',F);
fprintf('  selon les axes t et n\n');
% Vérification 
fprintf('Norme de F = %0.f N\n',norm(F));