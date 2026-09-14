%% Exemple PsA

%%
clear; clc
mF = 300; % N (norme de F)
angle = 30; % degrés
%%
% <<..\PsVecteurExA.gif>>
%
%% Démarche scalaire classique 
Px = mF*cosd(angle); Py = mF*sind(angle);
fprintf('Projections scalaires de F\n');
fprintf('Px = %.1f N et ',Px);
fprintf('Py = %.1f N\n',Py);

%%
% Les projections et les composantes sont
% identiques lorsque les axes sont orthogonaux.


%% Utilisation du produit scalaire
% Vecteur unitaire *nF* dans la direction de *F*
nF = [cosd(angle), sind(angle)];
F = mF*nF;
nx = [1,0]; % vecteur unitaire dans la direction x
ny = [0,1]; % vecteur unitaire dans la direction y
mx = 1; my = 1; % La norme d'un vecteur unitaire
                % est évidemment 1.
% Calcul du produit scalaire en utilisant la déf.
% A·B = (norme A)*(norme B)*cos(angle)

%%
% <<..\PsVecteurExA.gif>>
%
Px = mF*mx*cosd(angle); Py = mF*my*cosd(90-angle);
fprintf('Projections scalaires par le P.S.\n');
fprintf('Px = %.1f N et ',Px);
fprintf('Py = %.1f N\n',Py);
%%
% On peut calculer le produit scalaire à l'aide de
% la fonction _dot_.
Px = dot(F,nx); Py = dot(F,ny);
fprintf('\nIdem par la fonction dot\n');
fprintf('Px = %.1f N et ',Px);
fprintf('Py = %.1f N\n',Py);

%% Calcul des projections vectorielles
VecteurPx = dot(F,nx)*nx; % selon la définition
VecteurPy = dot(F,ny)*ny;
fprintf('\nProjections vectorielles\n');
fprintf('Vecteur Px = %+6.1fi %+6.1fj N,   ',...
   VecteurPx);
fprintf('norme = %6.1f N\n',norm(VecteurPx));
fprintf('Vecteur Py = %+6.1fi %+6.1fj N,   ',...
   VecteurPy);
fprintf('norme = %6.1f N\n',norm(VecteurPy));

%%
% <<..\PsVecteurExA.gif>>
%
% Pour des axes orthogonaux, l'utilité du produit
% scalaire n'est pas apparent.