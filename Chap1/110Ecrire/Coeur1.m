%% Coeur1.m
% Calcule le nombre battements de coeur pendant la vie.
%
% Version 1

%% Initialisation
% Habituellement les deux premières instructions nécessaires
clear     % Efface toutes les variables de la mémoire (Workspace).
clc       % Efface la console (Command Window)          

%% Données (interface utilisateur)
an=input('Quel est votre âge (an) ? ');
rythme=input('Écrire votre pulsation cardiaque (#/min) : ');

%% Calcul et affichage du résultat

% Noter l'avertissement, car manque ; à la fin
Votre_coeur_a_battu = an*365.25*24*60*rythme

% En classe, voir d'autres façon d'afficher avec disp et fprintf pour
% rendre l'affichage plus clair, car juste un nombre qui s'affiche ça ne
% dit pas grand chose.