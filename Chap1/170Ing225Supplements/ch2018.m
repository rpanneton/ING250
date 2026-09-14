%% Problème 2/18, Meriam p. 35
% <<..\ch2018.gif>>

%%
clear; close all; clc;
mR = 800; % N (Norme)

%% Démarche scalaire
% Construire le parallélogramme. Choisir un
% triangle et appliquer la loi des sinus
% (3 angles + 1 côté connus).
%
% Composantes obliques
Q1 = 'Composantes de R selon les axes a et b\n';
Ra = sind(110)/sind(40)*mR;
Rb = sind(30)/sind(40)*mR;
fprintf(Q1);
fprintf('Ra = %.0f N et ',Ra);
fprintf('Rb = %.0f N\n',Rb);

%%
% <<..\ch2018a.gif>>
%

%%
% Vérifier en calculant la Norme de *R* avec la
% loi des cosinus.
%
% <<..\ch2018b.gif>>
a = Ra; b = Rb; C = 40; % degrés
c = sqrt(a^2+b^2-2*a*b*cosd(C)); % = Norme de R
fprintf('Norme de R = %.0f kN',c);

%%
% Calcul de _Pa_
%
% <<..\ch2018Pa.gif>>
%
Q2='\nProjection orthogonale de R sur l''axe a\n';
Pa = mR*cosd(40);
fprintf(Q2);
fprintf('Pa = %.0f N\n',Pa);

%%
% « Note that the components of a vector are in
% general not equal to the projections of the
% vector onto the same axes. If the _a_-axis had
% been perpendicular to the _b_-axis, the the
% projections and components of *R* would have
% been equal. » Meriam page 31.
%
% Noter que les composantes obliques d'un
% vecteur ne sont pas égales aux projections de
% ce vecteur sur les mêmes axes. Les projections
% et les composantes sont identiques seulement si
% les axes _a_ et _b_ sont orthogonaux.

%% Démarche vectorielle
% Pour calculer les composantes obliques de *R*,
% il faut établir les vecteurs unitaires de *a*,
% *b* et *R*, déterminer les trois vecteurs, poser
% et résoudre deux équations portant sur la somme
% des composantes. *Ra* et *Rb* sont les
% composantes obliques de *R* dans les directions
% *a* et *b*.
%
%  R = mR*nR = mR*[nR(1), nR(2)]
%  Ra = mRa*nRa = mRa*[nRa(1), nRa(2)]
%  Rb = mRb*nRb = mRb*[nRb(1), nRb(2)]
%  où
%     mR, mRa et mRb sont les normes des vecteurs,
%     nR, nRa et nRb sont les vecteurs unitaires.
%
% Poser les équations des deux composantes et
% résoudre mRa et mRb. L'axe des _x_ est
% parallèle à l'axe _a_.
%
% <<..\ch2018Pa.gif>>
%
% <Resoudre2equations.html
% Résoudre un système de 2 équations>
nR = [1,0]; % vecteur unitaire
nRa = [cosd(30), sind(30)];
nRb=[cosd(-110),sind(-110)]; % convention de atan2
Eq1 = 'mRa*nRa(1) + mRb*nRb(1) = mR*nR(1)';
Eq2 = 'mRa*nRa(2) + mRb*nRb(2) = mR*nR(2)';
S=solve(Eq1,Eq2,'mRa','mRb');
mRa = eval(S.mRa); mRb = eval(S.mRb);
Ra = mRa*nRa; Rb = mRb*nRb;
fprintf('\nComposantes obliques\n');
fprintf('Ra = %+6.0fi %+6.0fj N,   ',Ra);
fprintf('norme = %6.0f N\n',norm(Ra));
fprintf('Rb = %+6.0fi %+6.0fj N,   ',Rb);
fprintf('norme = %6.0f N\n',norm(Rb));
R = Ra + Rb; R = mR*nR; % Vérification
fprintf('Résultante R = Ra+Rb\n');
fprintf(' R = %+6.0fi %+6.0fj N,   ',R);
fprintf('norme = %6.0f N\n',norm(R));


%%
% Projection orthogonales
%
% On peut obtenir la projection orthogonale en
% utilisant le produit scalaire.
% Voir la section 2/7 de Meriam à la page 67.
Pa = dot(R,nRa); Pb = dot(R,nRb);
Q2 = ['\nProjections orthogonales de R ',...
   'sur les axes a et b\n'];
fprintf(Q2);
fprintf('Pa = %.0f N et ',Pa);
fprintf('Pb = %.0f N\n',Pb)
fprintf('sous la forme vectorielle\n');
VecteurPa = dot(R,nRa)*nRa; % selon la définition
VecteurPb = abs(dot(R,nRb))*nRb;
% Tenir compte du signe de Pb
fprintf('Vecteur Pa = %+6.0fi %+6.0fj N,   ',...
   VecteurPa);
fprintf('norme = %6.0f N\n',norm(VecteurPa));
fprintf('Vecteur Pb = %+6.0fi %+6.0fj N,   ',...
   VecteurPb);
fprintf('norme = %6.0f N\n',norm(VecteurPb));