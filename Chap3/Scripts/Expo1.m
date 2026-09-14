% Expo1.m
% Exponentiation élément par élément
% par programmation classique.
clear;home
A=[01 02 03 04
   05 06 07 08];
[RangA,ColA]=size(A)
% Deux boucles pour générer les
% indices de la nouvelle matrice
for i=1:RangA
   for j=1:ColA
      C(i,j)=A(i,j)*A(i,j);
   end
end
C
Operation_Matlab_C=A.^2