% Fichier xls10nov.m
clear; clc
C1 = 'Température moyenne du 10 novembre';
C2 = 'calculée entre 1995 et 2004';

M = xlsread('Novembre.xls');
[nrang,ncol]=size(M);
nov10=10;
somme = 0;
for j=1:ncol
   somme=somme+M(nov10,j);
end
fprintf([C1,'\n',C2,'\nXm = %.1f °C\n'],...
   somme/ncol);
