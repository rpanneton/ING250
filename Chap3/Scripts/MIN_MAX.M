%min_max.m
%Min et Max d'un vecteur
clear
V=load('Distance.dat');
minimum=V(1);
maximum=V(1);
taille=length(V);
for i=2:taille
   if(minimum>V(i))
      minimum=V(i);
   end
   if(maximum<V(i))
      maximum=V(i);
   end
end
minimum
maximum
%S'il y a plus d'une
%valeur min (ou max),
%l'algorithme proposé identifie
%le premier élément dans la liste.