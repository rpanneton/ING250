%% Exemple PsB
% L'exemple est une reprise de l'exemple 2/4,
% Meriam page 31.
%
% En utilisant le produit scalaire, déterminer les
% projections *Fa* et *Fb* du vecteur *R*
% résultant de la somme de *F1* et *F2* selon les
% axes obliques.

%%
clear; clc
mF1 = 100; mF2 = 80; % N (Normes)
%%
% <<..\PsVecteurExB.gif>>
%
% Procédure – déterminer les vecteurs unitaires
% selon les axes _a_ et _b_. Calculer le vecteur
% *R* et ensuite les projections *Fa* et *Fb*.

% vecteur unitaire dans la direction a
na = [cosd(30), sind(30)];
% vecteur unitaire dans la direction b
nb = [cosd(-20), sind(-20)]; % convention de atan2
F1 = mF1*na; F2 = mF2*nb; % voir Meriam page 7.
R = F1+F2;
fprintf('F1 = %+6.1fi %+6.1fj N,   ',F1);
fprintf('norme = %6.1f N\n',norm(F1));
fprintf('F2 = %+6.1fi %+6.1fj N,   ',F2);
fprintf('norme = %6.1f N\n',norm(F2));
fprintf(' R = %+6.1fi %+6.1fj N,   ',R);
fprintf('norme = %6.1f N\n',norm(R));

%%
fprintf('Projections scalaires\n');
Fa = dot(R,na); Fb = dot(R,nb);
fprintf('Fa = %.1f N et ',Fa);
fprintf('Fb = %.1f N\n',Fb);

fprintf('\nProjections vectorielles\n');
VecteurFa = dot(R,na)*na; % selon la définition
VecteurFb = dot(R,nb)*nb;
fprintf('Vecteur Fa = %+6.1fi %+6.1fj N,   ',...
   VecteurFa);
fprintf('norme = %6.1f N\n',norm(VecteurFa));
fprintf('Vecteur Fb = %+6.1fi %+6.1fj N,   ',...
   VecteurFb);
fprintf('norme = %6.1f N\n',norm(VecteurFb));

%%
% Dans l'exemple 2/4 de la page 31, Meriam indique
% que les composantes obliques *F1* et *F2* du
% vecteur *R* ne sont pas égales aux projections
% *Fa* et *Fb* sur les mêmes axes.
%
% Les projections et les composantes sont
% identiques seulement si les axes sont
% orthogonaux. Voir aussi les problèmes types 2/17
% et 2/18, page 35.