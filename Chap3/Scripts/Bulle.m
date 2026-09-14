%% Tri par la méthode de la bulle
%%
clear; clc
V=[32,49,23,17,8,47,35,21,3,16];
fprintf('%02.0f ',V);
fprintf('\n');
n=length(V);

%% Initialisation
% Cet artifice permet le premier cycle de la
% boucle while.
UnChangement=true;

%%
% Au début de la boucle, poser qu'il n'y a pas
% de changement.
%
% Lorsque la boucle interne *for-end* se termine
% sans échange de données,
% *UnChangement* demeure faux et la boucle
% while se termine. Les données sont classées.

%% Classement par ordre ascendant
while(UnChangement)
   UnChangement=false; % Faux
   for i=2:n
      if(V(i-1)>V(i))
         tmp=V(i);
         V(i)=V(i-1);
         V(i-1)=tmp;
         UnChangement=true; % Vrai
         fprintf('%02.0f ',V);
         fprintf('\n');
      end
   end
   fprintf('\n');
end
%%
% * Les petits nombres se déplacent vers le
% début (à gauche).
% * Ils flottent comme des bulles vers la
% surface.
% * Les plus gros nombres tombent dans le fond
% (à droite).
%
% D'autres algorithmes sont beaucoup plus
% efficaces.
%
%  >> doc sort
%
% <<..\Feuilles.gif>>