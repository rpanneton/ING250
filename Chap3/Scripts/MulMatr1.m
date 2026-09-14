% MulMatr1.m
% Multiplication matricielle
% Programmation classique
clear;home
A=[11 12 13 14
   21 22 23 24
   31 32 33 34];
[RangA,ColA]=size(A)
B=[01 04
   02 03
   01 02
   02 01];
[RangB,ColB]=size(B)
% Deux boucles pour générer les
% indices de la nouvelle matrice
for i=1:RangA
   for j=1:ColB
      % Boucle pour la somme
      C(i,j)=0;
      for k=1:ColA % ou RangB
         C(i,j)=C(i,j)+A(i,k)*B(k,j);
      end
   end
end
C
Operation_Matlab_C=A*B