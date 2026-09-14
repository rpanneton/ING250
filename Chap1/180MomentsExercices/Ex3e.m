%% M = U × W
%
% Dans chacun des cas suivants, trouver l'aire du
% triangle formé par les points M, P et Q, puis
% donner un vecteur unitaire *normal* à ce
% triangle.
%%
clear; clc
%% a) : M (1,-1,2), P (2,0,-1), Q (0,2,1)
M=[1,-1,2]; P=[2,0,-1]; Q=[0,2,1];
%%
% Chaque variable M, P et Q est un tableau de
% données à une dimension, que l'on nomme vecteur
% en informatique. Dans ce cas-ci, les variables
% ne sont pas associées à des vecteurs physiques.
% C'est l'utilisateur qui fournit la sémantique:
% ce sont les coordonnées de points dans l'espace.
%
% 
% Former deux vecteurs ayant une origine commune.
MP = [P(1)-M(1), P(2)-M(2), P(3)-M(3)];
MQ = [Q(1)-M(1), Q(2)-M(2), Q(3)-M(3)];
fprintf('MP = %+0.fi %+0.fj  %+0.fk\n',MP);
fprintf('MQ = %+0.fi %+0.fj  %+0.fk\n',MQ);

LaNormale=[+MP(2)*MQ(3)-MP(3)*MQ(2),...
   -MP(1)*MQ(3)+MP(3)*MQ(1),...
   +MP(1)*MQ(2)-MP(2)*MQ(1)];
norme = sqrt(LaNormale(1)^2+LaNormale(2)^2+...
   LaNormale(3)^2);
LaNormaleUnitaire = LaNormale/norme;
fprintf('Surface = %.3f\n',(1/2)*norme);
fprintf(['Vecteur normal unitaire = ',...
   '%+3.fi %+3.fj  %+3.fk\n'],LaNormaleUnitaire);

%% b) : M (2,-2,1), P(3,-1,2), Q(3,-1,1)
M=[2,-2,1]; P=[3,-1,2]; Q=[3,-1,1];
%%
% Former deux vecteurs ayant une origine commune.
fprintf('\nSecond triangle\n');
MP = [P(1)-M(1), P(2)-M(2), P(3)-M(3)];
MQ = [Q(1)-M(1), Q(2)-M(2), Q(3)-M(3)];
fprintf('MP = %+0.fi %+0.fj  %+0.fk\n',MP);
fprintf('MQ = %+0.fi %+0.fj  %+0.fk\n',MQ);
LaNormale = cross(MP,MQ);
norme = norm(LaNormale);
LaNormaleUnitaire = LaNormale/norme;
fprintf('Surface = %.3f\n',(1/2)*norme);
fprintf(['Vecteur normal unitaire = ',...
   '%+3.fi %+3.fj  %+3.fk\n'],LaNormaleUnitaire);