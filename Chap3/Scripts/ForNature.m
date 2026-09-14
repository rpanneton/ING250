%% Constante de Neper calculée par une série
clear; clc;
serie=1; num=1; denom=1; % initialisation
fprintf('Constante de Néper\n');
fprintf('Terme  Valeur\n')

for i=1:10 % Solution avec 10 termes.
   denom=denom*i; % calcul de la factorielle
   terme=num/denom;
   serie=serie+terme;
   fprintf('  %02.0f   %.8f\n',i,serie);
end
%%
fprintf('Selon Matlab, exp(1) = %.8f\n',exp(1));