%% Boucle à fin conditionnelle
% Une boucle à fin conditionnelle est utilisée
% lorsque l'arrêt du traitement a lieu
% après l'apparition ou la disparition d'une
% condition. Elle nécessite une initialisation
% portant sur la condition avant le premier
% passage dans la boucle.

%% Description
% TantQue la condition est vraie, la séquence 1
% est exécutée.
%
% <<..\TantQue.gif>>
%
% * La condition initiale
% produit un booléen *vrai*, faute de quoi la
% séquence 1 n'est jamais exécutée.
%
% * La séquence 1 rend éventuellement le
% booléen *faux*, autrement la séquence 1 est
% répétée sans fin.

%% Séquence A = [1, 3, 5, 7, 9]
% La boucle à fin conditionnelle n'est pas un
% choix judicieux lorsque le nombre de cycles est
% connu, comme c'est le cas pour une séquence bien
% définie. Toutefois, l'exemple
% permet une analogie avec la boucle _for-end_.

clear; clc;
for i=1:1:5     % Pour i=1 à 5, par pas de 1
   Af(i)=2*i-1; %    calculer Af(i)
end             % FinPour
fprintf('Af ='),fprintf('%2.0f',Af); fprintf('\n');

i = 1;          % initialisation du compteur
while(i<=5)     % TantQue i <= 5
   Aw(i)=2*i-1; %    calculer Aw(i)
   i = i+1;     %    accroître le compteur de 1
end             % FinTantQue
fprintf('Aw ='),fprintf('%2.0f',Aw); fprintf('\n');

%%
% Initialisation du compteur contenu dans le
% booléen de l'instruction _while_
%
% * Calcul du booléen i<=5, la
% condition permettant la répétition.
% * Lorsque le booléen est vrai, la séquence
% comprise entre les instructions _while_ et
% _end_ est exécutée, dont la modification du
% compteur en lien avec la condition permettant la
% répétition.
%
% Tant que la condition est satisfaite, la
% séquence est répétée.
%
% Lorsque la condition n'est plus satisfaite,
% Matlab continue avec l'instruction qui suit
% l'instruction _end_.
%
% *Sémantique*
% 
%  Si la condition est satisfaite, boucle.
% 
% C'est une erreur qui peut conduire à utiliser
% une structure de décision plutôt qu'une boucle.
% Formuler plutôt
%
%  TantQue la condition est satisfaite, boucle.
%
% Les programmeurs font en sorte que la condition
% soit modifiée à la toute fin de la séquence de
% la boucle. La condition initiale est
% habituellement le plus près possible du début de
% la boucle.

%% Séquence de nombres aléatoires
% Constituer une séquence contenant des nombres
% entiers positifs aléatoires.
% La séquence se termine dès que la somme est
% supérieure à 20.

S = 0; % sommateur
i = 0; % indice de N
while(S<=20)
   i = i+1;
   N(i)=round(9*rand); % entier aléatoire de 0 à 9
   S = S + N(i);
end
fprintf('N ='),fprintf('%2.0f',N); fprintf('\n');
fprintf('La somme = %.0f\n',S);

%%
% Le choix d'une boucle à fin conditionnelle est
% tout à fait approprié, car on ne connaît pas
% le nombre de cycles à effectuer. Il n'est pas
% possible d'utiliser la boucle comptée sans
% recourir à un artifice.
%
% <<..\TantQue.gif>>
%
% <<..\Feuilles.gif>>