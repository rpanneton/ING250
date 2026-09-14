%% fprintf
% L'instruction fprintf précise la disposition de
% l'affichage des données sur l'écran,
% indépendamment de leur représentation codée.

%% Présentation
% Pour afficher un texte à l'écran, il suffit de l'écrire
% entre parenthèses.
fprintf('Une force de plusieurs newtons.\n');
%%
% Le symbole “ \n ” veut dire nouvelle ligne.
% Matlab écrit le texte entre parenthèse et il
% passe ensuite à la ligne suivante. Son absence
% laisse le curseur après le texte.
fprintf('Une force de');
fprintf('plusieurs newtons.\n');
%%
% Le dernier fprintf continue la ligne à l'endroit
% terminé par le fprintf précédent. Pour écrire
% correctement la phrase, il faudrait laisser un
% espace à la fin du premier fprintf ou au début
% du second.
%
% Le symbole “ \n ” peut être aussi inséré dans
% une chaîne.
fprintf('Une force de\nplusieurs newtons.\n');

%% Afficher un nombre
%
% Pour afficher un nombre, il faut spécifier un
% format, c'est-à-dire la façon de l'afficher à
% l'écran. Le protocole “ f ” est utilisé pour un
% nombre à point flottant (un nombre réel).
%
% <<..\Force800N.PNG>>
%
norme = 800; % N
fprintf('Norme de F = %.0f newtons.\n',norme);
%%
% Le format est “ %.0f ”.
%
%  “ % ”  indique le début d'un format.
%  “ f ”  est le protocole à choisir pour un nombre.
%  “ .0 ” spécifie aucun chiffre après le point.
%
% La chaîne de caractère contient le format. La
% variable norme est séparée de la chaîne par une
% virgule.
%
% La composante en _x_ de la force de 800 N est
Fx = norme*sind(35);
% 1 chiffre après le point.
fprintf('Fx = %.1f newtons\n',Fx);

%% Champ du format
% Dans le contexte d'une police où chaque
% caractère occupe un même espace sur l'écran, le
% champ permet de spécifier le nombre d'espaces
% réservées pour l'affichage. Le champ est
% spécifié immédiatement après le “ % ” du format.

fprintf('Aucune spécification\n');
fprintf('-o-o-123456789\n');
fprintf('Fx = %.1f newtons\n',Fx);

fprintf('\nSept espaces au total\n');
fprintf('-o-o-123456789\n');
fprintf('Fx = %7.1f newtons\n',Fx);

%%
fprintf('Neuf espaces au total\n');
fprintf('-o-o-123456789\n');
fprintf('Fx = %9.1f newtons\n',Fx);

fprintf('Neuf espaces au total\n');
fprintf('-o-o-123456789\n');
fprintf('Fx = %9.3f newtons\n',Fx);

fprintf('\nDeux espaces au total (insuffisant)\n');
fprintf('-o-o-123456789\n');
fprintf('Fx = %2.3f newtons\n',Fx);
%%
% Dans ce dernier cas, Matlab augmente
% automatiquement le nombre d'espaces pour
% afficher correctement Fx.

%% Champ et chiffres après le point décimal
% Variations sous ce thème.
fprintf('1) Fx =%f newtons\n',Fx);
fprintf('2) Fx =%.0f newtons\n',Fx);
fprintf('3) Fx =%.1f newtons\n',Fx);
fprintf('4) Fx =%6.1f newtons\n',Fx);
fprintf('5) Fx =%7.1f newtons\n',Fx);
fprintf('6) Fx =%+7.1f newtons\n',Fx);
Fx = -Fx;
fprintf('7) Fx =%+7.1f newtons\n',Fx);

%% Affichage de vecteurs forces
%
% <<..\F1_F2.gif>>
%
% Expression vectorielle des vecteurs
F1=[1.9,4]; F2=[2.0,-6.2]; R = F1+F2;
fprintf('F1 = %+.1fi %+.1fj N\n',F1);
fprintf('F2 = %+.1fi %+.1fj N\n',F2);
fprintf(' R = %+.1fi %+.1fj N\n',R);

%%
% Il n'est pas nécessaire d'écrire spécifiquement
% chaque composante du vecteur comme ci-dessous.
fprintf('F1 = %+.1fi %+.1fj N\n', F1(1), F1(2) );

%%
% Expression scalaire de R
fprintf('R = %.2f N à ',norm(R));
Angle = atan2(R(2),R(1))*180/pi;
fprintf('%.1f°\n',Angle);

%%
% <<..\AxeBleu.gif>>