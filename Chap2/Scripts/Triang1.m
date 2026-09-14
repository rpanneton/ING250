% Lire a,b,c
% Évaluer s'il peuvent former un triangle.
% Déterminer le type de triangle.
clear; clc
a=input('a ? ');
b=input('b ? ');
c=input('c ? ');
C1= (a>0) && (b>0) && (c>0);
C2= (c<a+b) && (b<a+c) && (a<c+b);
if(C1&&C2) % Est-ce un triangle ?
   if((a==b)&&(b==c))
      % Équilatéral, 3 côtés égaux
      disp('C''est une triangle équilatéral.');
   elseif((a==b)||(b==c)||(c==a))
      % Isocèle, 2 côtés sont égaux.
      disp('C''est un triangle isocèle.');
   else
      disp('C''est un triangle quelconque.');
   end
else
   disp('Les côtés ne forment pas un triangle.');
end
% On peut remplacer
% disp('texte') par fprintf('texte\n');
