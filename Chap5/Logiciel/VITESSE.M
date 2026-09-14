% Vitesse.m
% Pour augmenter la vitesse
% d'exécution, Matlab compile 
% les fonctions en mémoire lors
% de la première utilisation.
clear
tic
eq_1=sym('x^(3/2)*log(x^2)');
rep_1=int(eq_1);
rep_1s=simple(rep_1)
toc
tic
eq_2=sym('x^(3/2)*log(x^2)');
rep_2=int(eq_2);
rep_2s=simple(rep_2)
toc