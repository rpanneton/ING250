%% Affichage du vecteur B – solution
%
Nomb; % Génère le vecteur B

% Solution
fprintf('\nUne donnée par ligne :\n');
fprintf('%6.2f\n',B);
fprintf('\nQuatre données par ligne :\n');
fprintf('%6.2f  %6.2f  %6.2f  %6.2f \n',B);
fprintf('\nfin\n');

%%
% Un saut de ligne est requis lorsqu'il n'y a pas
% un nombre de données exactement divisible par 4.