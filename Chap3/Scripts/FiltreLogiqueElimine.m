%% Filtre logique
% *Contexte*
%
% Matlab permet d'effectuer une conjonction
% logique entre les indices d'un vecteur et un
% vecteur booléen de même taille. L'opération
% produit un nouveau vecteur qui
% contient seulement les valeurs de X
% correspondant aux éléments vrais (1) du vecteur
% booléen.
%
% *Éliminer des données dans un vecteur*
%
% Conserver seulement les éléments dont la valeur
% est supérieure à 3 dans le vecteur X.
%% Programmation classique
%
clear; home
X=[3,6,5,2,9,1,8]
k=0;
for i=1:length(X)
   if(X(i)>3)
      k=k+1;
      T(k)=X(i);
   end
end
T
%% Opération vectorisée
X
B=X>3 % Vecteur filtre booléen
TB= X(B)
%%
% Le vecteur B est appelé un filtre. Lorsqu'on
% fournit un vecteur booléen comme indice de
% vecteur, Matlab l'interprète comme un filtre et
% conserve seulement les valeurs de X
% correspondant aux éléments vrais (1) du vecteur
% booléen.
%%
% X(B) est une opération vectorisée qui peut aussi
% s'écrire sur une seule ligne :
TB = X(X>3)
%%
% Le résultat est un nouveau vecteur dont tous
% les éléments sont supérieurs à 3.