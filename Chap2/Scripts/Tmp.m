% Lire 3 nombres et trouver le plus petit nombre.
clear; clc
a = input('a ? ');
b = input('b ? ');
c = input('c ? ');
% Une solution classique avec
% des « if » imbriqués.
if(a<=b)
   if(a<=c)
      a
   else % a>c
      c
   end
else % b<a
   if(b<=c)
      b
   else % b>c
      c
   end
end
% Autre solution :
% seule la valeur est retenue.
Valeur=a;
if(Valeur>b)
   Valeur=b;
end
if(Valeur>c)
   Valeur=c;
end
Valeur