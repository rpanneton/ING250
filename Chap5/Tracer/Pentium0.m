%Pentium0
%Prépare le graphique
clear
close all
data=load('Pentium.dat');
plot(data(:,1),data(:,2),'or')
title('Pentium')
ylabel('Indice de performance')
xlabel('Vitesse MHz')
%La couleur est modifiée
%LviewPro pour lalecture
%Paint pour le transformer en
%256 couleurs.