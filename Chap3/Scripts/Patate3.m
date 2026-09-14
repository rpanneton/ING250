% Fichier Patate3.m
clear;clc
V=[3 8 3 6 1 0 5 1 5 1 7 3 8 0 5];
n=length(V);
% Boucle TantQue
somme=0;
i=1;
while(i<=n & V(i)~=0)
   somme=somme+V(i);
   i=i+1;
end
somme % Afficher