%% Matrice ou tableau 2D – révision
%%
clear; clc; close all;
% Pseudodéclaration : permet de réserver l'espace
% en mémoire et accélère l'exécution.
M = zeros(4,5) % 4 rangées par 5 colonnes de zéros
for i = 1:4
   for j = 1:5
      M(i,j) = (i*10+j)*10;
   end
end
M
fprintf('\nM(%.0f,%.0f) = %.0f\n',3,4,M(3,4));
fprintf('\nRangée 2 =');
fprintf(' %.0f',M(2,:)); fprintf('\n');