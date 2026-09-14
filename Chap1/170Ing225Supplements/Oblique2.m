%% Oblique2

%% Construire le parallélogramme
% Tracer des parallèles aux lignes 1 et 2 au
% terminus de la force *F*.
%
% Rappel : les extrémités des lignes sont hors de
% la clôture et l'excédent est coupé par la
% clôture.
%
% Il suffit donc d'ajouter les coordonnées de *F*
% aux extrémités des lignes.

line(L1x+F(1),L1y+F(2),'Color',vert,...
   'LineStyle','--','LineWidth',1);
line(L2x+F(1),L2y+F(2),'Color',vert,...
   'LineStyle','--','LineWidth',1);