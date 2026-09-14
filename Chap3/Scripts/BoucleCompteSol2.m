%% Boucle comptée – Test d'auto-évaluation 2
% Utiliser strictement un vecteur comme compteur.
%%
clear; clc; close all;
V = load('V.dat'); % ou simplement load V.dat
plot(V,'sk');xlabel('Indice de V');ylabel('V');
title('Aperçu du vecteur V'); grid on;

%%
% Décision à branches multiples
nV = length(V); % nombre d'élements de V
S = [0 0 0 0]; % initialisation des compteurs
for i = 1:nV
   if(V(i)<-9)
      S(1)=S(1)+1;
   elseif(V(i)<0)
      S(2)=S(2)+1;
   elseif(V(i)<16)
      S(3)=S(3)+1;
   else
      S(4)=S(4)+1;
   end
end
pie(S)
legend('-30 à -10','-9 à -1','0 à 15','16 à 30',...
   'Location','BestOutside')

%%
help plot