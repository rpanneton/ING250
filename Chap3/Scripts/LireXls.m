% Fichier LireXls.m
clear; clc
Matrice=xlsread('Refr_num.xls');
[nrang,ncolonne]=size(Matrice)
Sy = Matrice(:,2)
disp('--------------')
Somme=0;
for i = 1:nrang
   Somme = Somme + Sy(i);
end
Moyenne = Somme/nrang
Selon_mean = mean(Matrice(:,2))