clear;close all;clc
M=xlsread('Velodrom.xls');
whos
h1=figure(1);
plot(M(:,5),M(:,6));
hold on
plot(M(:,2),M(:,3));
axis equal
grid on;
xlabel('X');
ylabel('Y');
% Exercice 1:
% Les anneaux ne sont pas fermés
% Modifier l'instruction plot

% Exercice 2
% Tracer en ajoutant les frontières
% entre les sections (du bas vers le haut de la piste).