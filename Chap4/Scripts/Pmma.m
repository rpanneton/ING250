clear;clc;close all;
Dessin=imread('Pmma.bmp');
whos
imshow(Dessin);
P=imfinfo('Pmma.bmp')
disp('Dimension de la figure')
Largeur=P.Width
Hauteur=P.Height
disp('Dimension de la matrice Dessin')
[mRang,nColonne,nPlan]=size(Dessin)