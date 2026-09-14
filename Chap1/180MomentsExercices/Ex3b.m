%% M = A × B
% Calculer le produit vectoriel des vecteurs *A*
% par *B*. Déterminer le norme du vecteur *M*
% résultant. Trouver l'angle entre  *A* et *B*.
%
% <<..\Ex3b.gif>>
%%
clear; clc
A = [-3 +2 0];
B = [-2 -1 0];
%%
% Il vaut mieux ajouter 0 pour la valeur de *k*.
% Cette procédure permet l'utilisation de la
% fonction cross et facilite l'utilisation de la
% formule détaillée.

%% Solution détaillée
% La solution proposée illustre la manipulation
% des éléments de vecteurs.
%
% <<..\Ex3aAparB.gif>>
NormeA = sqrt(A(1)^2 + A(2)^2);
NormeB = sqrt(B(1)^2 + B(2)^2);
M = [...
   + (A(2)*B(3)-A(3)*B(2)), ... % donne 0
   - (A(1)*B(3)-A(3)*B(1)), ... % donne 0
   + (A(1)*B(2)-A(2)*B(1))];
NormeM = sqrt(M(3)^2);
sin_theta = NormeM/NormeA/NormeB;
theta = asind(sin_theta);
%%
% Noter la présence des points de suspension; ces
% caractères permettent de passer à la ligne pour
% continuer l'instruction. Cette procédure
% favorise la lecture. Il n'y a donc pas d'excuse
% pour écrire des lignes d'instructions
% impossibles à lire sans faire défiler l'écran.
fprintf('Norme de A = %.2f\n',NormeA);
fprintf('Norme de B = %.2f\n\n',NormeB);
fprintf('M = %.0fi %+.0fj %+.0fk\n',M);
fprintf('Norme de M = %.2f\n',NormeM);
fprintf('Angle entre A et B = %.2f°\n\n',theta);

%%
% *Utilisation des fonctions cross et norm*
VecteurM = cross(A,B);
mA = norm(A); mB = norm(B); mM = norm(M);
theta = asind(mM/mA/mB);
fprintf('M = %.0fi %+.0fj %+.0fk\n',VecteurM);
fprintf('Norme de M = %.2f\n',mM);
fprintf('Angle entre A et B = %.2f°\n\n',theta);

%%
% Lire les informations concernant les fonctions
% _cross_ et _norm_.
%
%  >> doc cross
%  >> doc norm