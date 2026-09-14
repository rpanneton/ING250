%% Résoudre algébriquement deux équations

%% Méthode avec un crayon
% Résoudre un système de 2 équations et deux
% inconnus. La nomenclature utilisée est celle de
% l'annexe C/4 de Meriam.
%
% $$ a_1 x + b_1 y = c_1 \;\;{\rm Eq.1} $$
%
% $$ a_1 x + b_1 y = c_1 \;\;{\rm Eq.2} $$
%
% Isoler _x_ de l'équation 1 :
%
% $$ x = \frac{c_1 - b_1 y}{a_1} \;\;{\rm Eq.3} $$
%
% Remplacer _x_ dans l'équation 2 et isoler _y_ :
%
% $$ y =\frac{a_1c_2-a_2c_1}{a_1b_2-a_2b_1}
% \;\;{\rm Eq.4} $$
%
% Utiliser ce résultat dans l'équation 3 pour
% obtenir _x_ :
%
% $$ x = \frac{b_1c_2-b_2c_1}{b_1a_2-b_2a_1}
% \;\;{\rm Eq.5} $$

%% Fonction solve de Matlab
% Matlab permet de résoudre automatiquement ce
% système d'équation en utilisant la fonction
% _solve_. Les arguments de la fonction sont les
% équations ainsi que les variables à isoler.
% 
% Les arguments de _solve_ sont des données
% *caractères*.
clear; close all; clc;
Eq1 = 'a1*x + b1*y = c1';
Eq2 = 'a2*x + b2*y = c2';
S=solve(Eq1, Eq2, 'x', 'y');
x = S.x
y = S.y
% S est une structure de données ayant deux champs
% x et y contenant les deux résultats.

%% Exemple d'utilisation de solve
% Les solutions des équations suivantes sont
% _x_ = 3.4 et _y_ = 1.8
Eq1 = '2*x -y = 5';
Eq2 = 'x +2*y = 7';
S=solve(Eq1, Eq2, 'x', 'y');
x = S.x
y = S.y

%%
% Matlab fournit la réponse sous la forme d'objets
% symboliques. Pour les utiliser dans une
% expression numérique Matlab, il faut convertir
% chaque réponse à l'aide de l'instruction _eval_.
x_symbolique = x
x_numerique = eval(x)

%%
% Noter la différence de l'affichage des deux
% types de données :
%
% * 17/5 est complètement à gauche,
% * 3.4 est décalé vers la droite.
y_symbolique = y
y_numerique = eval(y)

%%
R1 = y_symbolique + 1/7 % exemple de calcul
R2 = y_numerique + 1/7

%% Exemple d'application en statique
% <<..\ch2017c.gif>>
%
% Pour calculer les composantes obliques de *F*,
% il faut établir les vecteurs unitaires de *a*,
% *b* et *F*, déterminer les trois vecteurs, poser
% et résoudre deux équations portant sur la somme
% des composantes.
%
% Voir le problème <ch2017.html 2/17> de
% Meriam.

%% Coquille Maple
% Matlab contient une coquille Maple permettant de
% résoudre des équations et de calculer des
% intégrales et des différentielles. Cette étude
% est effectuée principalement dans les cours de
% mathématiques de S2.
% 
% Exemple :
diff('sin(x)') % la différentielle du sinus
int('2*x^2')% intégrale de 2x²

%% 
% Voilà pour l'essentiel !
