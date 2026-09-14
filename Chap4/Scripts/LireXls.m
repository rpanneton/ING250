% Fichier LireXls.m
clear; clc
M = readmatrix('Refract.xls');
[r,c] = size(M)
somme = 0;
for i = 1:r
   somme = somme + M(i,2);
end
moyenne = somme/r
% (lecture = idem)
Fmean = mean(M(:,2))
SuperieureSy = sum(M(:,2)>1000)