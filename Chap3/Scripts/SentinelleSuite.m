%% Arrêt sur donnée sentinelle
% Comme la fonction _input_ ne s'utilise pas
% avec «Publish to html»,
% la fonction _rand_ est substituée à _input_.
%
% Remplacer cette modification pour utiliser la
% fonction _input_ dans la fenêtre de Matlab.
%%
clear; clc
fprintf('Écrire un à un des nombres.\n');
fprintf('Pour terminer, écrire 0\n');
N = round(9*rand);fprintf('N ? %.0f\n',N);
%N = input('N ? ');
Somme = 0;
k = 0;
while(N~=0)
   k = k+1;
   Nombre(k)=N;
   Somme=Somme+N;
   N = round(9*rand);fprintf('N ? %.0f\n',N);
%   N=input('N ? ');
end
fprintf('Pour ces %.0f nombres, ',k); 
fprintf('la moyenne = %.2f\n',Somme/k);
fprintf('Données :\n');
Nombre
%%
% <<..\Feuilles.gif>>