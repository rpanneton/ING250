%% Problème 2/10, Meriam p. 33
% <<..\ch2010.gif>>

%% Expression scalaire du vecteur P
clear; close all; clc;
mP = 260; % N
thetaSelonXetY = atan2(-5,-12)*180/pi;
% selon la convention l'angle est négatif :
theta = thetaSelonXetY - 90 -30; % selon t et n
% L'angle doit maintenant être positif parce qu'il
% est < -180°.
theta = theta + 360; % selon la convention de atan2
fprintf('Norme = %.0f N, ',mP);
fprintf('angle thêta = %0.f°\n',theta);
% Utiliser la méthode du problème 2/9 pour
% répondre aux autres questions.

%% Composantes scalaires de P
Pt = mP*cosd(theta); Pn = mP*sind(theta);
fprintf('Composantes scalaires\n');
fprintf('   Pt = %.0f N et ',Pt);
fprintf('Pn = %.0f N.\n',Pn);

%% Expression vectorielle de P
nP = [cosd(theta),sind(theta)]; % vecteur unitaire
fprintf('Vecteur unitaire np = %+.3fi  %+.3fj\n',nP);
P = mP*nP;
fprintf('P =  %+.0fi %+.0fj N\n',P);
fprintf('\nComposantes vectorielles\n');
fprintf('   vecteurs Pt = %.0fi N et ',P(1));
fprintf('Pn = %.0fj N.\n',P(2));