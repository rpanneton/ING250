% Derivee.m
clear; clc
ChaineDeCaracteres = input('Écrire f(x) : ','s');
F = sym (ChaineDeCaracteres);
whos % pour information seulement; ce n'est pas requis.
% On peut aussi écrire :
% F sym( input('Écrire f(x) : ','s') );
F_prime = diff(F)
