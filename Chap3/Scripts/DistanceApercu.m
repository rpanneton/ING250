%% Aperçu graphique des données
% En examinant les données à l'aide de l'éditeur
% ou de Excel, on peut obtenir un aperçu des
% valeurs que contient le fichier de données.
%
% Une autre façon est d'utiliser _plot_ pour obtenir
% un aperçu graphique des données.

%% load et plot
clear; clc; close all;
%%
% L'instruction _close all_ ferme toutes les
% fenêtres graphiques. C'est une
% instruction utile à placer au début d'un
% programme, car il arrive souvent que des
% instructions fautives laissent un graphique
% imparfait dans une fenêtre.

load Distance.dat
plot(Distance,'ob');
xlabel('indice des éléments du vecteur Distance')
ylabel('valeur des éléments, cm')
title('Aperçu graphique des données')
grid on;

%% xlsread et plot
d = xlsread('Distance.xls');
plot(d,'^r');
xlabel('indice des éléments du vecteur d')
ylabel('valeur des éléments, cm')
title('Aperçu graphique des données')
grid on;

%% Information supplémentaire
% Pour obtenir de l'information sur une
% fonction Matlab, écrire :
%
%  >> doc plot
%  >> doc title
%  >> doc xlabel
%  >> doc grid