%% Boucle comptée – Test d'auto-évaluation
%%
clear; clc; close all;
V = load('V.dat'); % ou simplement load V.dat
plot(V,'ob');xlabel('Indice de V');ylabel('V');
title('Aperçu du vecteur V'); grid on;
%% Décision à branches multiples
nV = length(V); % nombre d'élements de V
c1=0;c2=0;c3=0;c4=0; % initialisation des compteurs
for i = 1:nV
   if(V(i)<-9)
      c1=c1+1;
   elseif(V(i)<0)
      c2=c2+1;
   elseif(V(i)<16)
      c3=c3+1;
   else
      c4=c4+1;
   end
end
fprintf('Nombres compris entre :\n');
fprintf('-30 à -10 :%4.0f\n',c1);
fprintf(' -9 à  -1 :%4.0f\n',c2);
fprintf('  0 à  15 :%4.0f\n',c3);
fprintf(' 16 à  30 :%4.0f\n',c4);

%%
% Il est possible d'ignorer le _else_ et de
% calculer à la fin :
%
%  c4 = nv-c1-c2-c3
%
% Par contre, la vérification suivante ne serait
% plus possible :

Verification = nV == c1+c2+c3+c4

%% Décisions imbriquées
k1=0;k2=0;k3=0;k4=0; % initialisation des compteurs
for i = 1:nV
   if(V(i)<-9)
      k1=k1+1;
   else % à laisser toujours seul sur la ligne
      if(V(i)<0)
         k2=k2+1;
      else
         if(V(i)<16)
            k3=k3+1;
         else
            k4=k4+1;
         end
      end
   end
end
fprintf('Nombres compris entre :\n');
fprintf('-30 à -10 :%4.0f\n',k1);
fprintf(' -9 à  -1 :%4.0f\n',k2);
fprintf('  0 à  15 :%4.0f\n',k3);
fprintf(' 16 à  30 :%4.0f\n',k4);

%% Décisions imbriquées à 2 niveaux
s1=0;s2=0;s3=0;s4=0; % initialisation des compteurs
for i = 1:nV
   if(V(i)<0)
      if(V(i)<-9)
         s1=s1+1;
      else
         s2=s2+1;
      end
   else
      if(V(i)<16)
         s3=s3+1;
      else
         s4=s4+1;
      end
   end
end
fprintf('Nombres compris entre :\n');
fprintf('-30 à -10 :%4.0f\n',s1);
fprintf(' -9 à  -1 :%4.0f\n',s2);
fprintf('  0 à  15 :%4.0f\n',s3);
fprintf(' 16 à  30 :%4.0f\n',s4);

%% Évaluer votre travail
%  2 points pour la lecture du fichier V.dat et
%      l'instruction plot, xlabel, etc.
%
%  2 points pour l'ensemble des fprintf(s)
%      compteurs affichés avec point décimal (-1)
%      valeurs du tableau mal alignées (-1)
%
%  Mauvaise réponse (-2 par compteur)
%
%  Décision surchargée (-1 par item), exemple :
%     if( V(i)>=-9  && V(i)<=-1), etc.
%  C'est le résultat d'une mauvaise analyse.
%
%  Décisions disjointes (-2 par décision), exemple :
%     if(V(i)<-9)
%        c1=c1+1;
%     end
%     if( V(i)>=-9  && V(i)<=-1)
%        c2=c2+1;
%     end
%     if etc.
%  Explication : lorsqu'un intervalle est
%     identifié par une décision, les autres
%     décisions ne peuvent donner une réponse vraie,
%     car les décisions sont liées entre elles.
%
% Un script qui plante est noté zéro. Lors d'un
% microTest, le fichier de données utilisé pour la
% correction est habituellement différent de celui
% de l'examen.
%
% <<..\Feuilles.gif>>