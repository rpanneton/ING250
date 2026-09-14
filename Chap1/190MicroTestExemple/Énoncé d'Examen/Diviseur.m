%% Diviseur.m
% Objectif : Rétablir l'indentation des
% instructions.

%% Comment rétablir l'indetation
% Pour rendre le texte plus convivial,
% il faut décaler les instructions de décision.
% Examiner les items du menu de l'éditeur :
%
% * Edit : Select all, touche {Ctrl + A}
% * Text : Smart indent {Ctrl + I}
%
% En appuyant sur les touches
%    {Ctrl + A} et {Ctrl + I},
% les énoncés sont à nouveau décalés correctement.

%% Contexte
% Le script génère un nombre entier compris entre
% 1 et 30. Par la suite, il détermine si le nombre
% est divisible par 3 et 5.
%
% Le script utilise la fonction rem et floor.
%
% * rand : génère un nombre aléatoire compris
% entre 0 et 1.
% * floor : conserve la partie entière d'un
% nombre.
% * rem : calcule le reste après une division.
%
% Ces fonctions ne sont pas matière à examen.

clear; clc
N = floor(1+29.99*rand);
fprintf('Nombre généré : %.0f\n',N);
divisiblePar5 = rem(N,5)==0;
divisiblePar3 = rem(N,3)==0;
%%
% Choix de décisions binaires imbriquées
% propices à l'objectif de l'exercice.

if(divisiblePar3)
if(divisiblePar5)
fprintf(['%.0f est divisible ',...
'par 3 et 5.\n'],N);
else
fprintf('%.0f est divisible par 3.\n',N);
end
else
if(divisiblePar5)
fprintf('%.0f est divisible par 5.\n',N)
else
fprintf('%.0f n''est pas divisible',N);
fprintf(' par 3 et 5.\n');
end
end