%% Comment afficher un texte contigu. 
% Instruction : faire exécuter le script en mode
% _Publish to html_ et observer le résultat.

%% Réinitialisation et info
% Pour écrire un texte contigu en html, il suffit
% de concevoir une cellule et d'écrire en
% commentaire immédiatement dans les lignes qui
% suivent.
% 
% Chaque commentaire débute par « % » et
% le texte doit commencer à la colonne 3.
clear; clc; 
close all % close all est utile pour effacer toutes les figures existantes

%% Exemple
% Observer qu'il y a quatre lignes dans le script
% après « %% » et que le texte est contigu.
% Une cellule commence par « %% » et le texte
% débute à la colonne 3.

theta = asind(0.5) % pour illustrer

%%
% Dans cette cellule, il n'y a pas de texte
% sur la même ligne que le début de la cellule
% (%%).
%
% La première cellule génère un hyperlien dans la
% table des matières, alors que ce n'est pas le
% cas pour cette cellule-ci.

%% Contre-exemple 1
%Il n'y a pas un (1) espace à la colonne 2.
% Ce texte n'est pas contigu.

%% Contre-exemple 2
theta2 = asind(0.3) % pour illustrer
% Le texte ne suit pas immédiatement le début de
% la cellule. Il n'est donc pas contigu.


%% Exécution des instructions
% Les instructions sont exécutées cellule par
% cellule, ce qui améliore la compréhension d'un
% script.
%
% Voilà pour l'essentiel !