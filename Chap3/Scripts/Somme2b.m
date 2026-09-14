% Fichier Somme2b.m
% Lire A.dat et effectuer la somme
% Boucle comptée et boucle TantQue
% Quel est le meilleur choix ?
clear;clc
V=load('A.dat');
n=length(V);
% Boucle comptée
somme1=0;
for i=1:n
   somme1=somme1+V(i);
end
somme1
% Boucle à fin conditionnelle
somme2=0;
i=1;
while(i<=n)
   somme2=somme2+V(i);
   i=i+1;
end
somme2