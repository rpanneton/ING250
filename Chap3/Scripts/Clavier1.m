% Clavier1.m
% Raffinement successif
% Débuter par écrire un programme qui effectue
%    ce qui est demandé pour 1 seul ensemble.
% Rép. : Boucle TanQue l'on a des données.
clear; home;
disp('Écrire un à un les nombres N')
disp('Écrire zéro entre chaque ensemble')
disp('Écrire 2 zéros de suite pour terminer')
N=input('Premier nombre N ? ');
Somme=0;
i=0;
while(N~=0)
   i=i+1;
   Somme=Somme+N;
   N=input('N ? ');
end
Nombre_de_donnes_lues=i
Moyenne=Somme/i
% Suite : Clavier2.m 
disp('Merci !')