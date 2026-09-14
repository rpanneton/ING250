%% Moyenne et valeur maximale de Fonderie.txt
% Script compact
clear; clc; close all
M = load('Fonderie.txt');
fprintf('- - - - - - - - - - - - - - - - -\n');
fprintf('Moyenne = %.2f\n',mean(mean(M)));
fprintf('- - - - - - - - - - - - - - - - -\n');
[maxC,iR]=max(M); [maxM,iC]=max(maxC); 
fprintf(['Le maximum est ', 'M(%.0f,%.0f) = %.2f\n'],iR(iC),iC,maxM);
