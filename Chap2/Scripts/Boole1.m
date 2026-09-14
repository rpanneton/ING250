% Fichier Boole1.m
% Lire a,b,c et construire des propositions
% logiques.
clear; home
a=input('a ? ');
b=input('b ? ');
c=input('c ? ');
L1=(c < a + b)
L2=(b < a + c)
L3=(a < c + b)
L4=L1 && L2 && L3
L5=(a<b)&&(b<c) % a<b<c est une erreur.
if(L4)
   fprintf('L4 est vrai.\n')
else
   fprintf('L4 est faux.\n')
end
% Écrire « if(L4==1) » est une erreur de
% programmation. Cela se traduit par :
% est-ce que « (Vrai ou faux) == Vrai ? »