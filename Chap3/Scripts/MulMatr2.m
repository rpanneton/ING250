% MulMatr2.m
% Multiplication élément
% par élément.
% Programmation classique
clear;home
A=[11 12 13 14
   21 22 23 24
   31 32 33 34];
[RangA,ColA]=size(A)
B=[01 02 03 04
   04 03 02 01
   01 02 02 01];
[RangB,ColB]=size(B)
% Deux boucles pour générer les
% indices de la nouvelle matrice
for i=1:RangA
   for j=1:ColB
      C(i,j)=A(i,j)*B(i,j);
   end
end
C
Operation_Matlab_C=A.*B