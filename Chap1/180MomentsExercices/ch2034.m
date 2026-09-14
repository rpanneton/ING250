%% Problème 2/34, Meriam p. 44
% <<..\ch2034.gif>>
%
% *Démarche scalaire*
%
% La tension T du câble est toujours
% perpendiculaire au bras de levier.
%
% $$ M = F d \;\;\; \rm \acute{e}quation\;(2/5)$$
%
% $$ \sum M_O = 0 = - 1.8 + T*0.05 $$
clear; clc
T = 1.8/0.05;
fprintf('Norme de T = %.0f N',T);
fprintf(' dans le sens antihoraire\n');