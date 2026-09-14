% Fichier fmt2.m
clear; home
Mat = load('sy.dat');
fprintf('Affichage de la matrice\n');
fprintf('   Boucle explicite pour ligne\n');
fprintf('%s\n\n',...
    '   Boucle implicite pour colonne');
 
[ligne,col]=size(Mat);
for i=1:ligne
	fprintf(' %04.1f ',Mat(i,1:col))
	fprintf('\n')
end
% ' %04.1f '
%     4 colonnes, 
%       1 chiffre après le point décimal,
%    0 force l'affichage de chiffres
%       dans le champ complet (4 colonnes)
%  il y a un espace avant et après
%       chaque affichage.

%'\n' fait aller à la ligne suivante.