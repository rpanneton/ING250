%% Coeur2.m
% Calcule le nombre battements de coeur pendant la vie.
%
% Version 2

%% Initialisation
% Habituellement les deux premières instructions nécessaires
clear     % Efface toutes les variables de la mémoire (Workspace).
home      % N'efface pas la console (Command Window), mais place le curseur
          % en première ligne sur la console.

%% Données (interface utilisateur)
an=input('Quel est votre âge ? ');
disp('Compter le nombre de battements')
disp('de votre coeur pendant une minute.')
rythme=input('Écrire ce nombre : ');

%% Calcul et affichage du résultat
battements=an*365.25*24*60*rythme;
message='Battements de coeur durant votre vie :';
disp(message)
disp(battements)