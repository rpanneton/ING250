%% Décision binaire
% La décision binaire permet de choisir parmi deux
% séquences d'instructions, modifiant ainsi le
% déroulement du programme. La structure de
% décision binaire est intuitive.

%%
% <<..\OndulationOrange.gif>>
%% Séquence – rappel
% Une séquence d'instructions comporte un groupe
% d'instructions s'exécutant toujours dans le même
% ordre.
% 
% La décision binaire permet d'effectuer un choix
% qui modifie le déroulement d'un script.

%% Proposition logique
% Une proposition logique est la relation entre
% deux variables ou entre une variable et une
% constante de même type et de même dimension, qui
% s'établit à l'aide d'opérateurs de relation.
%
% Une proposition logique est soit vraie, soit
% fausse.
%
% Habituellement, les langages de programmation
% utilisent des booléens pour conserver le
% résultat de propositions logiques.
%
% Exemple
% 
%  L1 : est-ce que A est égal à pi ?
%  L2 : est-ce que A est plus grand que pi ?
%
clear; close all; clc
A = 3.1416;
fprintf('pi vaut %.6f etc.\n\n',pi);
L1 = ( A == pi ) % C'est faux.
L2 = ( A >  pi ) % C'est vrai.

%%
whos

%%
% L'instruction (A == pi) est une proposition
% logique qui donne un résultat faux (0), tandis que
% (A > pi) est vrai (1).
%
% L'expression (A == pi) est attribuée à la
% variable booléenne (logical) L1.
%
% Utiliser le terme booléen plutôt
% que « logique » (logical).
%
% L1 et L2 sont des objets de la classe booléenne
% et elles peuvent contenir deux états :
% 1 ou 0, soit vrai ou faux.
%
% Cette nouvelle classe s'ajoute aux classes
% double (nombres), caractère (mots) et
% symbolique (expressions mathématiques).
%
% Les symboles “ == ” et “ > ” sont des opérateurs de
% relation :
%
%  <   plus petit que
%  <=  plus petit ou égal à
%  >   plus grand que
%  >=  plus grand ou égal à
%  ==  égal à
%  ~=  non égal à
%
% <<..\OndulationOrange.gif>>

%% Décision binaire en pseudo-code
% Suite de l'exemple ci-dessus :
%
%  Si L2 est vrai
%     Écrire que L2 est plus grand que pi
%        (et aller à FinSi).
%  Sinon
%     Écrire que L2 est plus petit ou égal à pi.
%  FinSi

%%  Traduction Matlab de la décision binaire
if(L2)
   fprintf('L2 est plus grand que pi.\n');
else
   fprintf('L2 est plus petit ou égal à pi.\n');
end

%%
% <<..\Crayon.gif>>
%% Application au moment
% Dans chacun des problèmes en statique sur les
% moments, il faut identifier le sens (horaire ou
% antihoraire) du moment. Supposer que
Moment = [0 0 -4]; % composantes selon x, y et z
ComposantePositiveEnZ = Moment(3)>0;
if(ComposantePositiveEnZ)
   fprintf('Le moment est antihoraire.\n');
else
   fprintf('Le moment est horaire.\n');
end
fprintf('-- Fin de l''exemple --\n');