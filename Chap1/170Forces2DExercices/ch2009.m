%% Problème 2/9, Meriam p. 33
% <<..\ch2009.gif>>
%
% Déplacer le système d'axes _x_ et _y_ au début
% du vecteur.

%% Expression scalaire du vecteur P
clear; close all; clc;
mP = 260; % N
% ValeurEn_x = -12; ValeurEn_y = -5;
theta = atan2(-5,-12)*180/pi;
fprintf('Norme = %.0f N, ',mP);
fprintf('angle thêta = %0.f°\n',theta);

%% Composantes scalaires de P
Px = mP*cosd(theta); Py = mP*sind(theta);
fprintf('Composantes scalaires\n');
fprintf('   Px = %.0f N et ',Px);
fprintf('Py = %.0f N.\n',Py);

%%
% *Autre façon*
%
% Loi des proportions (h = hypothénuse) :
%
% $$\frac{P}{h}=\frac{P_x}{-12}=\frac{P_y}{-5}$$
h = sqrt(12^2+5^2); % hypothénuse (= 13)
Px = mP/h*-12; Py = mP/h*-5;
fprintf('Composantes scalaires, bis\n');
fprintf('   Px = %.0f N et ',Px);
fprintf('Py = %.0f N\n',Py);

%% Expression vectorielle de P
nP = [cosd(theta),sind(theta)]; % vecteur unitaire
fprintf('Vecteur unitaire nP = %+.3fi  %+.3fj\n',nP);
P = mP*nP;
fprintf('P =  %+.0fi %+.0fj N\n',P);
fprintf('\nComposantes vectorielles\n');
fprintf('   vecteurs Px = %.0fi N et ',P(1));
fprintf('Py = %.0fj N.\n',P(2));