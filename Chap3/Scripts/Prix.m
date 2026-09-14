% Cout.m illustre la pénalité en temps
% en comparant le temps de calcul numérique
% avec un calcul en mode symbolique.
clc;clear;format long g
disp('Outil numérique')
delta=0.1 % Quantité dont on fait la sommation
somme=0;   % Sommateur
cycle=0;   % Nombre de cycles effectués
un=1;
tic % Initialise l'horloge à zéro
for i=1:1e6 % 1 million
   cycle=cycle+un;
   somme=somme+delta;
end
Temps_numerique=toc % temps écoulé depuis tic
cycle
somme
disp('----------------')
disp('Outil symbolique')
delta=sym(0.1)
somme=sym(0);
cycle=sym(0);
un=sym(1);
tic
for i=1:1000
   cycle=cycle+un;
   somme=somme+delta;
end
cycle
somme
Temps_symbolique=toc
disp('Un calcul numérique')
disp('d''une durée de 1 s')
disp(['peut prendre ',...
      num2str(Temps_symbolique*1000/...
      Temps_numerique,'%.0f'),' s'])
disp('avec l''outil symbolique.')