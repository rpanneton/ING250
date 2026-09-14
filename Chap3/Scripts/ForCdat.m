%% ForCdat.m
%%
clear; clc;
V=load('C.dat');
Ensemble=1; Somme=0; Compteur=0; % initialisation
for i=1:length(V)
   if(V(i)~=0)
      Compteur=Compteur+1;
      Somme=Somme+V(i);
   else
      % C'est zéro, donc afficher.
      fprintf('Ensemble n° %.0f\n',Ensemble);
      fprintf('comprend %.0f données.\n',Compteur);
      fprintf('moyenne = %.1f\n\n',Somme/Compteur);
      % Initialiser les variables requises
      % pour traiter l'ensemble suivant.
      Ensemble=Ensemble+1; Compteur=0; Somme=0;
   end
end