% Lire a,b,c
% Déterminer si « a » est le plus grand nombre.
clear, clc
a=input('a ? ');
b=input('b ? ');
c=input('c ? ');
L1=a>b;
L2=a>c;
a_est_le_plus_grand_nombre=L1&&L2
% -----------------------
% On peut combiner directement
% les expressions :
a_est_le_plus_grand_nombreBis=a>b&&a>c
a_est_le_plus_grand_nombreTer=(a>b)&&(a>c)
% Noter comment les parenthèses
% facilite l'interprétation.