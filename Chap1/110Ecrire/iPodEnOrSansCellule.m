% Masse d'un iPod en or

% Énoncé
% Un iPod nano de 4e génération mesure
% environ 5 mm d'épaisseur, 38 mm de
% largeur par 91 mm de longueur. Il possède une
% masse de 36 g.
clear; clc % iPodEnOrSansCellule.m

% Données
Epaisseur = 5; Largeur = 38; Longueur = 91; % mm
Masse = 36; % g
MasseVolumiqueOr = 19.28; % g/cm³

% Question A
% Calculer la masse volumique (g/cm³) du iPod.
Volume = Epaisseur*Largeur*Longueur/1000; % cm³
MasseVolumique = Masse/Volume % g/cm³

% Question B
% L'or possède une masse volumique de 19.28 g/cm³.
% Calculer la masse d'un iPod en or pur.
MasseEnOr = MasseVolumiqueOr * Volume % g