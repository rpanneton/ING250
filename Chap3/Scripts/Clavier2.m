% Clavier2.m
% Moyenne d'ensemble de données écrites au clavier
% Boucle TantQue imbriquée dans une boucle TantQue
% Lorsqu'on a un zéro comme unique
%    donnée d'un ensemble, cela signifie
%    de terminer le programme.
clear; home;
disp('Écrire un à un les nombres N')
disp('Écrire zéro entre chaque ensemble')
disp('Écrire 2 zéros de suite pour terminer')
N=input('Premier nombre N ? ');
while(N~=0)
   Somme=0;
   i=0;
   while(N~=0)
      i=i+1;
      Somme=Somme+N;
      N=input('N ? ');
   end
   Nombre_de_donnes_lues=i
   Moyenne=Somme/i
   N=input('Premier nombre N ? ');
   % On doit déplacer cette instruction
   % à la fin pour éviter de l'écrire
   % deux fois de suite la première fois
   % qu'on lance le programme.
end
disp('Merci !')