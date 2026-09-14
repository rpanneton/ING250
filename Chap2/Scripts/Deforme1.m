% Deforme1.m
% Déformation et allongement d'une poutre
clear; home
fprintf('Quel est le matériau de la poutre ?\n');
fprintf('1 : aluminium\n2 : acier\n');
Materiau=input('Choix ? ');
if(Materiau==1 | Materiau==2) % Choix : Al, Acier
    LimiteElastique=[200,500]; % MPa
    ModuleElastique=[70,210]*1000; % MPa
    Largeur=input('Largeur en mm ? ');
    Epaisseur=input('Épaisseur en mm ? ');
    Longueur=input('Longueur en mm ? ');
    Charge=1000*input('Charge appliquée (kN) ? ');
    % La charge est mainteant en N.
    Contrainte_MPa = Charge/(Largeur*Epaisseur)
    if(Contrainte_MPa>LimiteElastique(Materiau))
        fprintf(['La poutre se déforme ',...
           'plastiquement.\n']);
    else
        Deformation=Contrainte_MPa/...
           ModuleElastique(Materiau)
        Allongement_mm=Longueur*Deformation
    end
else
    fprintf('Choix non permis.\n');
end