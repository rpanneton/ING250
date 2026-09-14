clear; clc % iPodEnOr.m
% Données
Epaisseur = 5; Largeur = 38; Longueur = 91; % mm
Masse = 36; % g
MasseVolumiqueOr = 19.28; % g/cm³

% Question A
Volume = Epaisseur*Largeur*Longueur/1000; % cm³
MasseVolumique = Masse/Volume % g/cm³

% Question B
MasseEnOr = MasseVolumiqueOr * Volume % g