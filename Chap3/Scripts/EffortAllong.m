% Courbe Force vs allongement
clear;close all;clc
mat = load('EffortAllong.dat');

% Avec le fichier Excel 
% mat = readmatrix('EffortAllong.xls');

Effort = mat(:,2);
Allongement = mat(:,1);
plot(Allongement,Effort,'oc',...
   Allongement,Effort,'b-');grid on;
title('Alliage 30% Cuivre - 70% Naqahdah');
xlabel('Allongement,  mm');
ylabel('Force,  N');
longueur = 50; % mm
section = 20; % mm^2
text(21,700,['Longueur ',...
   num2str(longueur),' mm']);
text(21,500,['section ',...
   num2str(section),' mm^2']);

contrainte = Effort/section;
deformation = Allongement/longueur;
h=figure(2);
set(h,'Name','Second graphique');
plot(deformation,contrainte,'oc');
grid on; hold on;
plot(deformation,contrainte,'r-');
title('Alliage 30% Cuivre - 70% Naqahdah')
xlabel('Déformation');
ylabel('Contrainte  MPa');