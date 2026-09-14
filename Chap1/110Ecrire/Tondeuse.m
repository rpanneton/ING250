%% Tondeuse.m
% Temps requis pour tondre le gazon d'un terrain rectangulaire

%% Initialisation
% Habituellement les deux premières instructions nécessaires
clear     % Efface toutes les variables de la mémoire (Workspace).
clc       % Efface la console (Command Window)          

%% Données (interface utilisateur)
largeur = input('Quelle est la largeur du terrain (m) ? ');
longueur = input('Quelle est la longueur du terrain (m) ? ');
batiments = input('Surface m² occupée par les bâtiments ? ');
   % Remarquer que le nom de la variable batiments
   % ne comporte pas d'accent.
   % La convention ne reconnaît pas les accents comme
   % nom valide de variable.

%% Constantes
vitesseDeCoupe = 0.5;  % m²/s

%% Algorithme 
temps = (largeur*longueur - batiments)/...
   vitesseDeCoupe;
   % Les trois points permettent de continuer
   % l'instruction à la ligne suivante.
   % L'écriture permet alors de mieux visualiser
   % plus facilement qu'elle comporte
   % un numérateur
   % et un dénominateur.
   % --> On met le ; pour ne pas afficher le résultat du calcul

%% Affichage
% Voici une façon plus élégante d'afficher la réponse :
disp(['Le temps de coupe est ',...
   num2str(temps),' s'])
   % La dernière instruction comporte une chaîne
   % de caractères écrite en trois portions :
   % (1) une constante chaîne de caractères
   % (2) une fonction transformant une variable
   %     de la classe double en caractères
   % (3) une constante caractères (espace et s).
   %
   % Il serait préférable d'utiliser la fonction
   % fprintf
disp('---> utilisation de fprintf')
fprintf('Le temps de coupe est %.0f s\n',temps);
