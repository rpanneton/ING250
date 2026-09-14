%% Calculer la moyenne de 3 nombres lus.
%% Les nombres ne sont pas conservés. 
clear; clc
nNombre = 3;
Somme = 0;
for i = 1:nNombre
   Somme = Somme + input('N ? ');
end
Moyenne = Somme/nNombre %#ok<*NOPTS> 

%% Les données lues sont affichées après la moyenne.
Somme = 0;
for i = 1:nNombre
   Donnee(i) = input('N ? '); %#ok<*SAGROW> 
   Somme = Somme + Donnee(i);
end
Moyenne = Somme/nNombre
Donnee
