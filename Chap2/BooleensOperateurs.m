%% Booléens – opérateurs
% Une proposition logique est une relation entre
% deux variables ou entre une variable et une
% constante de même type et de même dimension, qui
% s'établit à l'aide d'opérateurs de relation.
%
% Les opérateurs logiques permettent de combiner
% des propositions logiques.

%%
% *Opérateurs de relation – révision*
%
%  <   plus petit que
%  <=  plus petit ou égal à
%  >   plus grand que
%  >=  plus grand ou égal à
%  ==  égal à
%  ~=  non égal à

%%
% Il suffit de combiner des propositions logiques
% élémentaires à l'aide d'opérateurs logiques pour
% former des propositions plus complexes.
%
% <<..\OndulationOrange.gif>>

%% Opérateurs logiques
%
% *Opérateurs logiques entre vecteurs et matrices*
%
%  ~  négation logique     “ non ” (à droite du L)
%  &  conjonction logique   “ et ” ( majuscule 7 )
%  |  disjonction inclusive “ ou ” ( majuscule # )
%  xor(A, B) disjonction exclusive
%
% *Opérateurs logiques entre nombres scalaires*
%
%  ~   négation logique            “ non ”
%  &&  conjonction logique         “ et ”
%  ||  disjonction inclusive       “ ou inclusif ”
%  xor(A, B) disjonction exclusive “ ou exclusif ”
%
%  Documentation —— >> doc relop  ou  help relop
%
% <<..\OndulationOrange.gif>>

%% Tables de vérité*
% *Table indiquant par vrai ou faux le
% résultat d’une opération logique.
%
% *Et logique*
P1 = [false false true  true];
P2 = [false true  false true];
ET = P1 & P2;
fprintf('—— ET logique ——\n');
fprintf('%.0f  ',P1); fprintf('P1\n')
fprintf('%.0f  ',P2); fprintf('P2\n')
fprintf('%.0f  ',ET); fprintf('P1 et P2\n')

%%
% *OU inclusif*

P1 = [false false true  true];
P2 = [false true  false true];
OU = P1 | P2;
fprintf('—— OU inclusif ——\n');
fprintf('%.0f  ',P1); fprintf('P1\n')
fprintf('%.0f  ',P2); fprintf('P2\n')
fprintf('%.0f  ',OU); fprintf('P1 ou P2\n')

%%
% *OU exclusif*

P1 = [false false true  true];
P2 = [false true  false true];
XOU = xor(P1, P2);
fprintf('—— OU exclusif ——\n');
fprintf('%.0f  ',P1); fprintf('P1\n')
fprintf('%.0f  ',P2); fprintf('P2\n')
fprintf('%.0f  ',XOU); fprintf('P1 xOU P2\n')

%%
% *P1 et non-P1*
P1 = [false true];
nonP1 = ~P1;
fprintf('—— P1 et non-P1 ——\n');
fprintf('%.0f  ',P1); fprintf('P1\n')
fprintf('%.0f  ',nonP1); fprintf('nonP1\n')
%%
% <<..\OndulationOrange.gif>>

%% Priorité des opérations
% *Résumé*
%
% * Un opérateur de relation compare des
% expressions et des variables. Le résultat est
% une proposition logique.
%
% * Un opérateur logique combine des
% propositions logiques. Le résultat est une
% nouvelle proposition logique.
%
% Documentation Matlab
help precedence
%%
% <<..\OndulationOrange.gif>>

%% Écueil fréquent
% Il y a comparaison entre des objets de classes
% différentes.
%
% Exemple — déterminer si un nombre N est compris
% entre 5 et 10, bornes exclues.
N = 7; % par exemple
P = 5 < N < 10; fprintf('P = %.0f\n',P);

%%
% C'est vrai et comme c'est la bonne réponse, la
% construction semble correcte.
%
% Par contre,
N = 3;
P = 5 < N < 10; fprintf('P = %.0f\n',P);

%%
% Matlab indique une réponse vraie, et ce n'est
% pas la bonne réponse. Explication
5 < N  % donne 0, faux (un booléen)
0 < 10 % donne 1, vrai (un booléen < un nombre)
%%
% Il y a comparaison entre une proposition logique
% (0) et le nombre 10.
% Ce sont deux classes d'objets différents.
% Matlab ne signale pas l'erreur.
%
% Utiliser l'opérateur logique ET.
N = 3;
P = (5 < N) & (N < 10); fprintf('P = %.0f\n',P);

%%
% La réponse est “ Faux ”.
%
% <<..\OndulationOrange.gif>>

%% Égalité entre 2 nombres réels
% Voici ce qu'il ne faut pas faire.
N1 = 3*1.1; N2 = 3.3;
SontIlsEgaux = N1 == N2 % non

%%
% Cette opération ne tient pas compte de la
% représentation numérique des nombres réels en
% mémoire. Bien que ce sujet soit traité en S2,
% retenir qu'il ne s'agit pas d'une anomalie
% causée par Matlab.
%
% Noter combien la différence est minuscule.
Difference = N1-N2

%%
% Parce qu'il n'est pas possible de représenter
% exactement dans la mémoire de l'ordinateur un
% nombre réel, il faut vérifier l'égalité en
% utilisant un subterfuge. Plutôt que d'effectuer
% une comparaison directe, il faut s'interroger
% sur la valeur absolue de la différence.
%
% Le concept tient compte de la précision
% recherchée.
QuasiEgaux = abs(N1-N2) < 0.0001 % oui

%%
% La fonction “ abs ” donne la valeur absolue de
% l'expression (N1-N2) passée en argument.
% L'opérateur de relation d'égalité “ == ”
% s'utilise presque exclusivement avec des données
% numériques entières.
%
% <<..\OndulationOrange.gif>>

%% Help relop – documentation Matlab
% *Opérateurs de relation et opérateurs logiques*
help relop