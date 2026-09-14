%% Problème 2/12, Meriam p. 34
% Glisser le vecteur F jusqu'au point _C_, à
% l'origine des deux systèmes des axes. Évaluer
% les composantes rectangulaires (scalaires) dans
% les 2 systèmes.
%
% Considérer le système des axes _t_ et _n_ comme un
% système des axes _x_ et _y_ ayant subi une
% rotation.
%
% <<..\ch2012a.gif>>

%% Expression scalaire du vecteur F
clear; close all; clc;
mF = 800; % lb (norme de F)
angle_x = 180-20; % angle entre F et l'axe des x
% selon la convention de atan2
angle_t = -180+40; % angle entre F et l'axe des t
% selon la convention de atan2, adaptée à l'axe t.
fprintf('Norme = %.0f lb\n',mF);
fprintf('   angle selon x = %+0.f°\n',angle_x);
fprintf('   angle selon t = %+0.f°\n',angle_t);

%% Composantes scalaires de F
fprintf('Composantes scalaires de F\n');
Fx = mF*cosd(angle_x); Fy = mF*sind(angle_x);
Ft = mF*cosd(angle_t); Fn = mF*sind(angle_t);
fprintf('  selon x et y\n');
fprintf('    Fx = %.0f lb et Fy = %0.f lb\n',Fx,Fy);
fprintf('  selon t et n\n');
fprintf('    Ft = %.0f lb et Fn = %0.f lb\n',Ft,Fn);

%% Expression vectorielle de F
nFxy=[cosd(angle_x),sind(angle_x)]; Fxy = mF*nFxy;
nFtn=[cosd(angle_t),sind(angle_t)]; Ftn = mF*nFtn; 

fprintf('Vecteur unitaires\n');
fprintf('   n_xy = %+.3fi  %+.3fj\n',nFxy);
fprintf('   n_tn = %+.3fi  %+.3fj\n',nFtn);

fprintf('\nVecteur F selon les 2 systèmes\n');
fprintf('   Fxy =  %+.0fi %+.0fj lb\n',Fxy);
fprintf('   Ftn =  %+.0fi %+.0fj lb\n',Ftn);

fprintf('\nComposantes vectorielles de F\n');
fprintf('   vecteurs Fx = %.0fi N et ',Fxy(1));
fprintf('Fy = %.0fj N.\n',Fxy(2));
fprintf('   vecteurs Ft = %.0fi N et ',Ftn(1));
fprintf('Fn = %.0fj N.\n',Ftn(2));