%% Des iris 
% 
% <<..\IrisSepalePetale.gif>>
% 
% Objectif : utiliser les indices matriciels pour
% manipuler une matrice appelée *C*.
%
% Utiliser la matrice *C*
% dans tous les calculs et fonctions.
% Les noms de variables en gras sont obligatoires,
% et sauf avis contraire,
%
% * afficher les résultats avec fprintf,
% * choisir la boucle la plus appropriée (for,
% while et vectorisation).

%% Étape 1 – lecture
% Commencer par examiner le contenu du fichier
% Iris.xls.
%
% Lire le fichier Iris.xls <a href="Iris.xls">Iris.xls</a> et attribuer son
% contenu à la matrice *C*.
%

%% Étape 2 – surface d'un sépale et d'un pétale
% Pour chaque iris, tracer la surface d'un pétale
% en fonction de celle d'un sépale.
%
% Pour simplifier les calculs, poser que la
% surface d'un sépale ou d'un pétale est égale au
% produit de la longueur par la largeur.
%
% Reproduire la figure ci-dessous. Faire en sorte
% que la légende ne recouvre pas les données.
%
%  >> doc legend
% 
% <<..\IrisSurface.png>>

%% Étape 3 – dimensions du plus gros pétale
% Déterminer les dimensions (longueur et largeur)
% du pétale ayant la plus grande surface.
%
% * Examiner la figure pour déterminer s'il
% s'agit d'un iris Virginica ou d'un iris
% Versicolor.
%
% * Afficher la valeur de la surface ainsi que sa
% largeur et sa longueur avec fprintf.
%
% * Ajouter une étoile verte sur la donnée du
% graphique correspondant à cet iris.
%
%        plot(    ...      ,'*g')

%% Étape 4 – critère de séparation
% Examiner la figure pour déterminer un
% critère permettant de distinguer qu'un iris est
% de la famille Virginica ou de la famille
% Versicolor à partir de ses dimensions. Le
% critère doit être le plus efficace possible. Il
% se peut qu'il ne puisse être
% discriminant à 100% pour tous les iris.
%
% Écrire 5 à 6 lignes *en commentaire* pour
% expliquer le critère. L'explication doit
% s'afficher correctement en texte html contigu
% avec l'utilitaire _Publish to html_.
%
% Rédiger ensuite quelques lignes de code pour
% démontrer l'efficacité du critère.
%
% <IrisSol.html Solution>
%
% <<..\Feuilles.gif>>
