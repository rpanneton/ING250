clear;clc;% JourWhile.m
TJ = load('Juillet.dat');
T = input('T ? '); i = 1;
while(i<=length(TJ)&&T>TJ(i))
   i=i+1; % ^^ noter l'ordre.
end
Jour = i % i=32 --> aucun