%% B06Sol
clear
N=input('N : ');
c=1;  % devrait être initialisé à zéro
i=0;
while(N~=0)
   i=i+N;
   c=c+1;
   N=input('N : ');
end
while(N==0) % Possiblement if(i~=0)
   moyenne=i/c;
end
C % On voulait peur-être créer un vecteur plus haut
moyenne
% Le choix du nom i pour le sommateur est fautif, pcq.
% 1) i est souvent utilisé comme compteur
% 2) ce n'est pas un nom significatif pour un sommateur
%    "s" pour "somme" serait déjà mieux.
% Le script n'est pas complet.