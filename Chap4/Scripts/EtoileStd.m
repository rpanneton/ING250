%% Affichage d'un tableau de vecteurs différents
% Les vecteurs sont de classes différentes.

%%
clear; clc;
Etoile0 % contient les données
format compact; format short g

%% Afficher en omettant le point-virgule
% Le résultat est décevant.
Etoile, Magnitude, Distance

%% Afficher en regroupant les vecteurs
% Il faut faire mieux que cela.
disp([Etoile,...
   num2str(Magnitude),...
   num2str(Distance)])

%% Ajouter un espace entre les vecteurs
% Le résulat est acceptable.
espace = '          '; % dix espaces
espace = espace'; % Transposer la rangée en col.
disp([Etoile,espace,...
   num2str(Magnitude),espace,...
   num2str(Distance)])

%% Écrire une rangée à la fois
% La fonction num2str ne produit pas le même
% résultat partout, car les nombres sont
% différents et traités un à un.
for i = 1:length(Distance)
   disp([...
      Etoile(i,:),' ',...
      num2str(Magnitude(i)),' ',...
      num2str(Distance(i))]);
end

%%
% La fonction fprintf permet un meilleur affichage
% à moindre effort.

