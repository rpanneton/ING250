%% TestVecteur
clear; close all; clc;
Cloture=[-8,+8,-6,+6];
axis equal; hold on; axis(Cloture); grid on;
F = [2, 3];
Vecteur(Cloture,F,[-1,-2],'b');
G = [-4,-1];
Vecteur(Cloture,G,[1,1],'r');
H = [1, 4];
Vecteur(Cloture,H,[-3,0],'k');