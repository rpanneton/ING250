%% Moyenne de 5 nombres bornés
% Comme la fonction _input_ ne peut pas être
% utilisée avec l'utilitaire «Publish to html»,
% la fonction _rand_ est substituée à _input_.
%
% Remplacer cette modification pour utiliser la
% fonction _input_ dans la fenêtre de Matlab.

%%
clear; clc
fprintf('Écrire 5 nombres compris entre 10 et 30\n')
Somme = 0;
for i=1:5
   fprintf('\nNombre no %.0f\n',i);
   N = round(50*rand);fprintf('N ? %.0f\n',N);
%  N = input('N ? ');
   while((N<10)||(N>30))
      fprintf('Écrire N entre 10 et 30 s.v.p.\n');
      N = round(50*rand);fprintf('N ? %.0f\n',N);
%     N=input('N ? ');
   end
   Somme=Somme+N;
end
fprintf('\nSomme = %.0f  et  moyenne = %.1f\n',...
   Somme,Somme/5);
%%
% * La boucle for-end compte les cycles.
% * La boucle while fait en sorte que la donnée
% fournie est toujours valide.
%
% Cette validation ne peut pas être effectuée par
% une décision _if-end_.
%
% <<..\Feuilles.gif>>