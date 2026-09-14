%% Exercice de révision avec while et input
% *Contexte*
%
% On mesure la limite élastique d'échantillons
% d'Al-2024-T4 pour lequels la limite élastique
% varie entre 250 et 350 MPa.
%
% *Écrire un script*
%
% # Lire un à un les nombres écrits au clavier.
% # Chacun doit être > 250 pour être accepté.
% # À mesure, représenter chaque donnée
% sur un graphique par un rond rouge.
% # Écrire 0 pour terminer la lecture.
% # Terminer le script en traçant un trait
% indiquant la moyenne.
%
% *Suggestion*
%
% Coder les grandes lignes, coder ensuite les
% détails.
%
%  Lire une donnée (Re)
%  TantQue Re est différent de zéro
%     (coeur du script)
%      Lire à nouveau une donnée
%  Fin TantQue
%  Terminer le script.
%
% * Étape 1 – Résoudre les items 1 et 4. Le nombre
% de données à lire n'est pas connu à l'avance.
% Utiliser une boucle while.
%
% * Étape 2 – item 3. Tracer les données.
%
% * Étape 3 – item 5. Calculer la moyenne.
%
% * Étape 4 – item 2. Choisir les données.
%
% *Artifice pour illustrer la solution* –  La
% fonction inputG simule l'écriture de données au
% clavier. Cet artifice permet l'utilisation de la
% commande _Publish to Html_. Voir le fichier
% inputG.m pour plus de détails sur les données
% générées.

%%
clear; clc; close all;
% initialisation
k = 0; % compteur de nombres acceptés
somme = 0;
Re = inputG('Valeur mesurée ? ');

while(Re~=0)
   if(Re>250)
      k = k + 1; somme = somme + Re;
      plot(k,Re,'or'); grid on; hold on;
   else
      disp('Donnée refusée, s.v.p. recommencer')
   end
   Re = inputG('Valeur mesurée ? ');
end

if(k>0)
   moyenne = somme/k;
   plot([1,k],[moyenne,moyenne],'-b');
   xlabel('N^o de l''échantillon');
   ylabel('Limite élastique MPa');
   title('Échantillons d''Al 2024 T4');
   axis([1,k,250,350]); % ajuste les axes.
end
% if(k>0) permet d'éviter de planter le script
% lorsque se présente le cas inusité où k=0.