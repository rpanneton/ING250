%% Afficher caractères et nombres
%%
% Dans le chapitre 1, l'instruction _fprintf_ est
% utilisée pour afficher des nombres :
clear; clc; close all;
F = 150; % newtons
fprintf('Une force de');
fprintf(' %.0f newtons\n',F);

%%
% Le texte qui accompagne la force F est
% inclus dans la chaîne de caractères contenant le
% format, ou forme complètement la chaîne
% d'affichage. Le format %s (_string_) permet
% d'afficher un texte contenu dans une variable.

Texte = 'Une force de';
fprintf('%s %.0f newtons\n',Texte,F);

%%
% <<..\Feuilles.gif>>