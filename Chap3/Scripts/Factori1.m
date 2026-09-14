%% Fichier Factori1.m
%  Lire un entier N (on le suppose entier)
%  Initialiser F = 1
%  Pour i allant de N à 1 par incrément de -1
%     F = F*i;
%  FinPour
%  Affiche F

clear
home
fprintf('Écrire un entier positif N : 5\n'); N=5;
% N=input('Écrire un entier positif N : ');
%    Déplacer le « % » des 2 lignes précédentes
%    pour une exécution dans la fenêtre de Matlab.
F=1;
for i=N:-1:1
   F=F*i;
   fprintf('%4.0f',i,F);
   fprintf('\n');
end
fprintf('Factorielle de %.0f = %.0f\n',N,F);