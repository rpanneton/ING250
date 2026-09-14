%% Comparer les éléments de 2 vecteurs
% Combien de données du vecteur A sont plus
% petites que celles de B tout en étant supérieures
% à 3 ?
%%
clear; clc
A = [2 3 6 9 7 6];
B = [4 5 9 4 3 7];
%% Programmation classique
n = 0;
for i = 1:length(A)
   Booleen1 = A(i)<B(i);
   Booleen2 = A(i)>3;
   if(Booleen1 && Booleen2) % noter &&
      n = n + 1;
   end
end
n
%% Opération vectorisée
nVectorise = length( A((A<B)&(A>3)) )
% noter le symbole simple &