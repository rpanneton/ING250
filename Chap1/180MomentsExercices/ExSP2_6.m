%% Norme de M
% Un pont-levis est soulevé par un câble _AB_ où
% l'on applique une tension _T_, ce qui entraîne
% un moment _Mo_ à l'axe _O_.
%
% Tracer le rapport _d = Mo / T_ en fonction de
% l'angle d'élévation _thêta_ entre 0° et 90°.
%
% Déterminer les valeurs minimale et maximale de
% ce rapport.
%
% <<..\MeriamSP2_6ab.gif>>
%
% *Solution* – Constater que la direction de *T*
% varie selon la valeur de _thêta_. Rappelons la
% définition du vecteur moment  *M* = *r* × *F*
% (éq. 2/6), ce qui donne *M*_o_ = *r* × *T*,
% selon l'énoncé du problème.
%
% Le vecteur *r* a comme origine le point de
% rotation _O_ et l'autre extrémité est sur la
% ligne d'action de la force *T*.
%
% Comme on recherche une expression alégbrique
% contenant _T_, on écrit que *T* = _T_ *n*_AB_,
% où *n*_AB_ est le vecteur unitaire dans la
% direction de *T*.
%
% <<..\MeriamSP2_6c.gif>> 

%%
clear; clc; close all;
theta = 0:0.1:90;
d = 0.2*cosd(theta)./ ... soit Mo/T
   sqrt(0.41-0.4*sind(theta));
plot(theta,d); grid on; axis([0,90,0,0.45]);
xlabel('\theta, degré');
ylabel('d = {M_O} / {T}   m')
title('Bras de levier en fonction de \theta')

%%
[valeurMax_d, indiceMax] = max(d);
fprintf(...
   'Valeur maximale de d = %.2f m à %.1f°\n',...
   valeurMax_d, theta(indiceMax));
[valeurMin_d, indiceMin] = min(d);
fprintf(...
   'Valeur minimale de d = %.2f m à %.1f°\n',...
   valeurMin_d, theta(indiceMin));
   