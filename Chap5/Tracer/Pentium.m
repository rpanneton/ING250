%Pentium
% Objectifs
%   Lire un graphique
%   Numériser les données
%Information sur les données
%Voir le fichier Pentium.txt

%Préparation
clear
close all
format short g
home
disp('Placer la fenêtre Matlab')
disp('à gauche de l''écran.')
disp(' ')
disp('Ajuster la largeur juste')
disp('assez pour lire cette phrase.')
disp(' ')
disp('Appuyer sur')
disp('«Entrée»')
pause
home

%Lire une image windows bit map 
% 256 couleurs
%Les données sont lues dans A
%Une matrice de la classe unit8
% entier 1 octet non signé
% (unsigned integer 8)
% Cardinal (pas de signe + ou -)
% pouvant contenir 256 informations.
[A,couleur]=imread('pentium.bmp');
whos
[m,n] = size(A);
%Propriétés de la figure
figure('Units','pixels','Position',[100 100 n m])
%Affiche A comme une image
image(A); 
% Couleur représentée par chacun
% des nombres
% Trois valeurs par couleur
% Rouge, Vert, Bleu (RGB)
colormap(couleur);
%gca : graphic current axes
%Règle la position des axes à 0,0
%(bas, gauche et pleine longueur (1)
set(gca,'Position',[0 0 1 1]);
%Déplace la fig. en haut à droite.
%gcf : graphic current figure
%Lecture de la position (get)
P=get(gcf,'position');
%Réglage de la position (set)
%[gauche,droite,largeur,hauteur]
set(gcf,'position',[800-P(3)-10,600-P(4)-75,P(3:4)]);
disp('1) Déplacer le curseur')
disp('   sur la figure.')
disp('2) Cliquer, les valeurs')
disp('   s''affichent dans la')
disp('   fenêtre Matlab.')
disp('3) Répéter en observant')
disp('   les valeurs générées')
disp('   selon l''orientation.')
disp('   Cliquer (0,0),(0,3500)')
disp('           (1200,3500)')
disp('4) Terminer en appuyant')
disp('   sur {Entrée}')
format short g
%Acquisition d'un point
x_y=ginput(1);
while(~isempty(x_y))
   disp(x_y)
   x_y=ginput(1);
end
disp('-------')
disp('  Modifier le programme')
disp('    de façon à pouvoir')
disp('    lire les données.')
disp('  Étape 1')
disp('    Calibration des axes')
disp('  Étape 2')
disp('    Établir une échelle')
disp('    de conversion.')
disp('  Étape 3')
disp('    Numériser et convertir')
disp('    les données.')
