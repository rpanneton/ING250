%% Calcul de la racine carrée de N
% C'est une application de la méthode itérative de Héron d'Alexandrie (1er
% siècle après J.C.) que même les babylonniens connaissaient entre -500 et
% -2000 ans avant notre ère.  C'est un cas particulier de la méthode de
% Newton, qui est étudiée en S2.
% L'application répétitive de l'équation
%
% $$ x_{1} = \frac{x_0 + \frac{N}{x_0}}{2} $$
%
% permet de converger rapidement vers la solution
% de la racine cubique de N.

%%
clear; clc; N = 16;
% Initialisation
Delta = 0.01;  % Précision minimale à atteindre
x1 = 1.0;      % Valeur pour la 1re itération
SontInegaux = true; % Permet la 1re itération.
%%
% Tant que x1 et x0 sont inégaux, répéter le
% calcul itératif.
while(SontInegaux)
   x0 = x1;
   x1 = (x0 + N /x0)/2;
   SontInegaux = abs(x1-x0) > Delta;
   % Lorsque x1 est semblable à x0,
   % alors x1 est la racine cubique de N.
   fprintf('%8.5f\n',x1);
   % Affichage pour illustrer la convergence
end
%%
fprintf('Calcul de la racine carrée de %d :\n',N);
fprintf('a) %8.5f par la méthode itérative\n',x1);
fprintf('b) %8.5f selon Matlab\n',N^(1/3));

%%
% <<..\Hero_of_Alexandria.png>>