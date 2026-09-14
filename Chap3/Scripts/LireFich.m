% Fichier LireFich.m
clear; clc
dir *.dat
Fichier=input('Écrire le nom du fichier : ','s');
A=load(Fichier);
[Rang,Colonne]=size(A)
longueur = length(A)
