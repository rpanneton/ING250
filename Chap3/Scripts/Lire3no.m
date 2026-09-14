% Lire3no.m
% Boucle comptée pour la lecture répétitive
%     de 3 nombres
% Boucle à fin conditionnelle pour la
%     lecture forcée entre 5 et 30.
clear
home
disp('Fournir 3 nombres compris entre 5 et 30')
Somme = 0;
for i=1:3
   N=input(['Écrire le nombre no ',num2str(i),' : ']);
   while((N<5)|(N>30))
      N=input('Écrire N entre 5 et 30 s.v.p. : ');
   end
   Somme=Somme+N;
end
Moyenne=Somme/3
% La boucle for-end compte les cycles
% while fait en sorte que la donnée fournie
%   est toujours valide.
% Cette validation ne peut être effectuée par if-end.

% La vectorisation n'est pas possible ici.

fprintf('\n------> Affichage avec fprintf\n')
% fprintf est une fonction présentée
% après le chapitre sur les boucles.
fprintf('La moyenne est %.1f\n',Moyenne);