%min_m2.m
%Indices du Min et 
%du Max d'un vecteur
clear
V=load('Distance.dat');
ind_min=1;
ind_max=1;
taille=length(V);
for i=2:taille
   if(V(ind_min)>V(i))
      ind_min=i;
   end
   if(V(ind_max)<V(i))
      ind_max=i;
   end
end
ind_min
valeur=V(ind_min)
ind_max
valeur=V(ind_max)
%S'il y a plus d'une
%valeur min (ou max),
%l'algorithme proposé identifie
%le premier élément dans la liste.