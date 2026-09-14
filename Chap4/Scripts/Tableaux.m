%% Tableaux ou variables indicées
% Définition
% « Dans les langages de programmation de haut
% niveau, mode de structuration des données
% composé d'un ensemble d'éléments de même type
% rassemblés sous _un seul nom_ et où l'accès à
% l'information se fait à l'aide d'un ou de
% plusieurs indices.
%
% Un tableau peut avoir une, deux ou trois
% dimensions. Dans certains cas, ce nombre est
% encore plus élevé. Les tableaux font partie des
% bases de structuration de données, lesquelles
% représentent un élément majeur de la
% programmation. »
%
% – Office de la langue française, 2002

%%
% Matlab est excellent dans l'utilisation des
% tableaux, car il comporte de nombreux outils
% pour les manipuler. Les vecteurs, les chaînes de
% caractères et les matrices sont des tableaux ou
% variables indicées.
%
% Matlab signifie MATrices et LABoratoire.
% L'unité de donnée de base est la matrice.

clear; clc; close all;
A = 12.3;         % scalaire            matrice 1×1
B = [11,12,13];   % vecteur rangée      matrice 1×3
C = [11;21;31];   % vecteur colonne     matrice 3×1
D = [11,12,13;
     21,22,23];   % tableau 2D          matrice 2×3
E = 'En génie ';  % vecteur caractères, matrice 1×9
F=['Université';  % matrice de caractères      2×10
    'Sherbrooke']; 
whos

%%
% *Rappel* – indices d'éléments
fprintf('A      = %.0f\n', A);
fprintf('A(1)   = %.0f\n', A(1));
fprintf('B(1))  = %.0f\n', B(1));
fprintf('C(2)   = %.0f\n', C(2));
fprintf('D(2,2) = %.0f\n', D(2,2));
fprintf('E(2)   = %s\n',   E(2)); % %s : 'string'
fprintf('F(2,2) = %s\n',   F(2,2));

%%
% *Lecture de données*
%
% L'utilisation de tableaux implique presque
% toujours la lecture et l'écriture d'une quantité
% importante de données. La lecture de données est
% une opération délicate, quel que soit le langage
% de programmation utilisé. Et il est préférable
% d'utiliser des fonctions spécialisées comme
% _load_ et _readmatrix_.
%
%  >> doc "Data Import and Export"
%
% <<..\Feuilles.gif>>
