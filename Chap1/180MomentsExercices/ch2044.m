%% Problème 2/44, Meriam p. 46
% <<..\ch2044.gif>>
%
%%
% *Démarche scalaire*
%
% * Ne pas tenir compte de l'épaisseur du plancher
% de la plateforme.
% * Remplacer la masse répartie des planchers par
% une force ponctuelle équivalente.
% * Poser le système des axes _x_ et _x_ au point
% _B_.
%
% $$ \sum M_O = 0\;\; \Longrightarrow \;
% 1 \times F_1 = s \times F_2 $$
%
% Déterminer le bras de levier _s_.
%
% <<..\ch2044a.gif>>
%
clear; clc
m = 8*28; % m·kg/m
a = 9.821; % m/s² (Annexe D) à 37.5° de latitude
mF1 = m*a; % N,  Norme de F = m a
mF2 = 90*a; % N
s = 1*mF1/mF2;
fprintf('s = %.2f m\n',s);
fprintf(['\nPour assurer la sécurité du ',...
   'travailleur,\nnoter que le segment du ',...
   'plancher à\ndroite de B est trop long.\n']);