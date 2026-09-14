% Expo2.m
% Exponentiation élément par élément
% par programmation classique entre
% deux tableaux.
clear;home
A=[01 02 03 04
   05 06 07 08];
B=[5 4 2 3;
   2 3 1 0];
[RangA,ColA]=size(A)
% Deux boucles pour générer les
% indices de la nouvelle matrice
for i=1:RangA
   for j=1:ColA
      C(i,j)=A(i,j)^B(i,j);
   end
end
C
Operation_Matlab_C=A.^B