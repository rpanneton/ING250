%% Exemple 2/3, Meriam p. 31
% # Écrire *F* en fonction des vecteurs unitaires
% *i* et *j*. Identifier également les composantes
% scalaires et vectorielles.
% # Déterminer les composantes scalaires de *F*
% selon les axes _x'_ et _y'_.
% # Idem selon les axes _x_ et _y'_.
% 
% <<..\MeriamSP2_3.gif>>

%% R selo i et j
clear; close all; clc;
% Par rapport à l'axe x (0°)
Angle_yPrime_x = 30; % degrés
Angle_x_xPrime = Angle_yPrime_x - 90;
mF = 500; %N (norme)
Fx = mF*cosd(Angle_x_xPrime);
Fy = mF*sind(Angle_x_xPrime);
F_fonctionDe_i_j = [Fx, Fy]
fprintf('F : %.0fi  %+.0fj N\n',F_fonctionDe_i_j);

%% Selon x' et y'
% L'angle thêta = 0 est selon x'.
FxPrime = mF;
FyPrime = 0;
fprintf(['\nComposantes scalaires selon '...
   'x'' et y'' :\n']);
% 2 apostrophes = 1 apostrophe affichée.
% Les ... permettent de continuer l'instruction à
% la ligne suivante.
% Les [  ] font la concaténation de la chaîne de
% caractères de l'instruction.
fprintf('Fx'' : %.0f N  et  ',FxPrime);
fprintf('Fy'' : %.0f N\n',FyPrime);

%% Selon x et y'
% Les composantes selon x et y' ne sont pas
% rectangulaires. Procédure :
%
% 1) Appliquer la loi du parallélogramme.
%
% 2) Choisir un triangle et nommer les côtés.
%
% 3) Appliquer la loi des sinus.
% 
% <<..\MeriamSP2_3c.gif>>

b = mF;
AngleA = 90; AngleB = 30; AngleC = 60; % degrés
a = b/sind(AngleB)*sind(AngleA); Fx = a
c = b/sind(AngleB)*sind(AngleC);
FyPrime = -c 
% PCQ FyPrime est en sens inverse de l'axe y'.
fprintf(['\nComposantes scalaires selon '...
   'x et y'' :\n']);
fprintf('Fx : %.0f N  et  ',Fx);
fprintf('Fy'' : %.0f N\n',FyPrime);