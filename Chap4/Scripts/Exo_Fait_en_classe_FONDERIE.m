%% Laboratoire de métrologie
% Afficher la matrice des mesures

%% Initialisation
clear; clc

%% Lecture des données
M = load('Fonderie.txt');

%% Affichage avec 2 boucles
[nrang, ncol]=size(M);
for i=1:nrang
    for j=1:ncol
        fprintf('%4.2f  ',M(i,j))
    end
    fprintf('\n')
end

%% Affichage avec 1 boucle et la vectorisation
fprintf('\n')
for i=1:nrang
    fprintf('%4.2f  ',M(i,:))
    fprintf('\n')
end

%% Affichage sans boucle
fprintf('\n')
fprintf('%4.2f  %4.2f  %4.2f  %4.2f  %4.2f  \n',M')

%% Moyenne des données lues dans le fichier de mesure
somme=0;
for i=1:nrang
    for j=1:ncol
        somme=somme+M(i,j);
    end
end
fprintf('\nLa moyenne est: %.2f\n',somme/(nrang*ncol))
fprintf('La moyenne par fonction mean est: %.2f\n',mean(mean(M)))


%% Maximum des données lues dans le fichier de mesure
imax=1;
jmax=1;
for i=1:nrang
    for j=1:ncol
        if M(imax,jmax)<M(i,j)
            imax=i;
            jmax=j;
        end
    end
end
fprintf('\nLa valeur max est M(%i,%i) = %.2f\n',imax,jmax,M(imax,jmax))

%% Maximum par la fonction max

 % On trouve d'abord le max par colonne et la ligne correspondante
 [Mmax,imax]=max(M); 

 % On trouve ensuite le max du vecteur Mmax résultat et la colonne corresp.
 [Mmax,jmax]=max(Mmax);

fprintf('La valeur max est M(%i,%i) = %.2f\n',imax(jmax),jmax,M(imax(jmax),jmax))
