% Fichier xlsEcrire.m
% Exemple d'écriture d'une matrice
%    dans un fichier Excel.

% Lecture d'un vecteur contenu dans un fichier txt.
%    Le fichier Novembre.txt contient
%    la moyenne des températures journalières
%    des mois de novembre 1995 à 2004.
%    Les données forment une longue colonne.

clear; clc
A=load('Novembre.txt');
for j=1:10
   for i=1:30
      B(i,j)=A((j-1)*30+i);
   end
end

% Écriture simple de la matrice B
%   30 rangées par 10 colonnes
%   xlswrite('Novembre.xls',B);
%   Écriture avec message et indicateur
[indicateur,message]=xlswrite('Novembre.xls',B);
indicateur % une variable logique
%   «1» indique une opération complétée correctement.
message  % structure de données
%   indiquant l'erreur ou l'opération.

% Noter : si le fichier existe, Matlab
%   remplace les données existantes
%   ou une portion de celles-ci.
%
%   Pour être certain que le fichier
%   contienne seulement les données B,
%   il vaut mieux s'assurer que le fichier
%   n'existe pas avant l'écriture.

% Exemple d'affichage à l'écran : fprintf
%    En-tête : années 1995 à 2004
%    Rangs 1 à 30 : jours 1 à 30

% Méthode précise pour afficher un pointillé
%    de la bonne taille
for i=1995:2004
   fprintf('------'); % champ de 5 + 1 espace = 6
end
fprintf('\n')

% Affichage des dates
fprintf('%5d ',1995:2004);
fprintf('\n');

% Méthode classique pour afficher la matrice
C = xlsread('Novembre.xls');
[nrang,ncol]=size(C);
for i=1:nrang
   fprintf('%5.1f ',C(i,1:ncol));
   fprintf('\n');
end
