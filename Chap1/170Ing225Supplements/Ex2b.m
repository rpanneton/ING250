%Ex2b
clear; clc
A = [0 1 -1];
B = [-1 1 0];
% La fonction « dot » permet de
% calculer le produit scalaire.
% La fonction « norm » permet de
% calculer la norme d'un vecteur.
Angle = acosd(dot(A,B)/norm(A)/norm(B))