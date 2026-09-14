%% Lecture et affichage d'un tableau
%
%% Constituer les 5 vecteurs numériques
clear; clc; close all;
A=load('Refract.dat');
Mvo = A(:,1); Sy = A(:,2); Kc = A(:,3);
E = A(:,4); Tmax = A(:,5);
%%
NomAlliage = [
'98.4Nb-1.6Zr     '
'90Nb-10Hf        '
'90Nb-10W         '
'85Nb-15Ta        '
'90Nb-5Mo-5V      '
'93Ta-7W          '
'70W-(Cu,Ni)      '
'90W ASTM Class 1 '
'100W (commercial)'
'97W ASTM Class 4 '
'Mo(majeur)-Ti+Zr '
'100Mo ASTM B386  '
'95W ASTM Class 3 '
'93W-5.25Ni-1.75Fe'];

%% Afficher les vecteurs
