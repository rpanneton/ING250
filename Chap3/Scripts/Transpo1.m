% Transpo1.m
% Transposée de la matrice A
% par programmation classique.
clear;home
A=[11 12 13
   21 22 23
   31 32 33];
[RangA,ColA]=size(A)
% Deux boucles pour générer les
% indices de la nouvelle matrice
for i=1:RangA
   for j=1:ColA
      C(j,i)=A(i,j);
   end
end
C
Operation_Matlab_C=A'