%% Opérateurs vectoriels arithmétiques
% Matlab présente plusieurs opérateurs arithmétiques
% permettant de vectoriser des instructions.
%
% La vectorisation consiste à convertir une
% boucle comptée _for_ en une opération
% vectorielle équivalente.
%%
clear; clc; % Exemple :
A = [3 2 0; 4 0 6; 0 2 2]
B = [1 2 3; 1 1 2; 2 1 2]
%% Addition selon la méthode traditionnelle
[nLignes,nColonnes]=size(A);
for i = 1:nLignes
   for j = 1:nColonnes
      Addition(i,j) = A(i,j) + B(i,j);
   end
end
Addition
%% Addition selon la version vectorisée
Addition = A + B
%% Soustraction
Soustraction = A - B
%% Multiplication
Multiplication = A*B % i.e. rangée * par colonne
%% Multiplication élément par élément
MultiplicationElementParElement = A.*B
%% Division élément par élément
DivisionElementParElement = A./B
%% Élever à une puissance quelconque
Puissance = A^2 % La matrice doit être carrée.
%% Élever à une puissance élément par élément
PuissanceElementParElement = A.^2
%% Information supplémentaire
%  >> help *
%  >> doc arith
% 
% <html> <hr> </html>