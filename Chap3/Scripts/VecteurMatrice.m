%% Exercice 2 – vecteur et matrice
%%
clear; clc

%% Vecteur colonne contenant 2 éléments
A = [101;201]

%% Vecteur rangée contenant 3 éléments
B = [101 102 103] % ou B = [101,102,103]

%% Matrice de 2 rangées x 3 colonnes
C = [...
   11 12 13
   21 22 23]

%% Afficher
% * le 2e élément de A et B,
% * l'élément de C valant 21.
A2 = A(2), B2 = B(2), C21 = C(2,1)

%% Attribuer
% toute la 2e ligne de C à R2C.
R2C = C(2,:)

%% Ajouter
% * B comme 3e ligne de C,
C(3,:) = B
%%
% * R2C comme 6e ligne de C.
C(6,:) = R2C
%%
% Noter la présence de zéros aux lignes 4 et 5.
%% Déterminer la nouvelle dimension de C.
[nLigne,nCol]=size(C)