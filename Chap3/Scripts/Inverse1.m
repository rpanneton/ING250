% Inverse1.m
% Inverser l'ordre d'un vecteur
% par programmation classique.
clear;home
A=[11 12 13 14 15]
nItems=length(A);
for i=1:nItems
   C(nItems-i+1)=A(i);
end
C
Operation_Matlab_C=A(length(A):-1:1)