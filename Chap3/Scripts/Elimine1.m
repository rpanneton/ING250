% Elimine1.m  fabrique un nouveau
% vecteur T contenant seulement les
% éléments de X plus grands que 3.
clear; home
% Programmation classique
X=[3,6,5,2,9,1,8]
k=0;
for i=1:length(X)
   if(X(i)>3)
      k=k+1;
      T(k)=X(i);
   end
end
T
% Opération vectorisée
X
B=X>3 % Vecteur filtre booléen
TB= X(B)
Ou_encore_TB=X(X>3)