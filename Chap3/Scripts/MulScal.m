% MulScal.m
% Multiplication d'une matrice
% par un scalaire, ex. par 5.
% Programmation classique
clear;home
A=[11 12 13 14
   21 22 23 24
   31 32 33 34];
[RangA,ColA]=size(A)
% Deux boucles pour générer les
% indices de la nouvelle matrice
for i=1:RangA
   for j=1:ColA
      C(i,j)=A(i,j)*5;
   end
end
C
Operation_Matlab_C=A*5