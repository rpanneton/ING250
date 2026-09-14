%% Voyage.m
% Coût d'un voyage en automobile

%% Initialisation
clear     
clc       

%% Données (interface utilisateur)
distance = input('Quelle est la distance parcourue en km ? ');
consommation = input('Quelle est la consommation en litres/100 km ? ');

%% Constantes
entretien = 0.55; % 60¢ par km
coutDunLitre = 1.65; % $ par litre

%% Calcul et affichage de base (sans ;)
format bank
coutEntretien = distance*entretien
   % Remarquer que le nom de la variable coutEntretien
   % ne comporte pas d'accent.
   % La convention ne reconnaît pas les accents comme
   % nom valide de variable.
coutTotal = coutEntretien + ...
   distance*consommation*coutDunLitre/...
   100
   % Les trois points permettent de continuer
   % l'instruction à la ligne suivante.
   % L'écriture permet alors de mieux visualiser
   % les différentes parties de l'équation dont
   % un numérateur
   % et un dénominateur.
% Que signifie format bank ?
% >> doc format

% Note: serait plus clair si on ajoute des unités !!!
