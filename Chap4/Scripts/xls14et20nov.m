% Fichier xls14et20nov.m
clear; clc
C1 = 'Température moyenne entre les 14 et 20 novembre';
C2 = 'pendant la période de 1998 à 2002';

M = xlsread('Novembre.xls');
[nrang,ncol]=size(M);
nov14=14; nov20=20;
an1998=4; an2002=8;
somme = 0;
for i=nov14:nov20
   for j=an1998:an2002
      somme=somme+M(i,j);
   end
end
fprintf([C1,'\n',C2,'\nXm = %.1f °C\n'],...
   somme/...
   ((nov20-nov14+1)*(an2002-an1998+1)) );
