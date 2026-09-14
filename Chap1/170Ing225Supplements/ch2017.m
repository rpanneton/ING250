%% Problème 2/17, Meriam p. 35
% <<..\ch2017.gif>>

%%
clear; close all; clc;
mF = 2; % kN (Norme)

%% Démarche scalaire
% Construire le parallélogramme. Choisir un
% triangle et appliquer la loi des sinus
% (3 angles + 1 côté connus).
%
% Composantes obliques
Fa = sind(15)/sind(120)*mF;
Fb = sind(45)/sind(120)*mF;
Q1 = 'Composantes de F selon les axes a et b\n';
fprintf(Q1);
fprintf('Fa = %.3f kN et ',Fa);
fprintf('Fb = %.3f kN\n',Fb);

%%
% <<..\ch2017a.gif>>
%
% Projections orthogonales
Pa = mF*cosd(45); Pb = mF*cosd(15);
Q2 = '\nProjections de F sur les axes a et b\n';
fprintf(Q2);
fprintf('Pa = %.3f kN et ',Pa);
fprintf('Pb = %.3f kN\n',Pb);

%% Remarque de Meriam
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
%
% Le concept de norme doit être calculé
% différemment :
F = [Fa, Fb];
fprintf(['\nVecteur F = %+.3f %+.3f kN, ',...
   'selon a et b\n'],F);
%%
% Calcul de la norme en utilisant  la
% définition classique
%
norme = sqrt(F(1)^2+F(2)^2);
fprintf('Norme de F = %.1f kN,',norme);
fprintf(' ce qui est faux.\n');


%%
% Calcul correct de la norme : tracer le
% parallélogramme d'addition et utiliser la loi
% des cosinus.
%
% <<..\ch2017b.gif>>
a = Fa; b = Fb; C = 120; % degrés
c = sqrt(a^2+b^2-2*a*b*cosd(C)); % = norme de F
fprintf('Norme de F = %.1f kN (correct)\n\n',c);

%% Démarche vectorielle (résoudre 2 équations)
% Pour calculer les composantes obliques de *F*,
% il faut établir les vecteurs unitaires de *a*,
% *b* et *F*, déterminer les trois vecteurs, poser
% et résoudre deux équations portant sur la somme
% des composantes.
%
% *A* et *B* sont les composantes obliques de *F*
% dans les directions *a* et *b*.
%
%  F = mF*nF = mF*[nF(1), nF(2)]
%  A = mA*nA = mA*[nA(1), nA(2)]
%  B = mB*nB = mB*[nB(1), nB(2)]
%  où
%     mF, mA et mB sont les normes des vecteurs,
%     nF, nA et nB sont les vecteurs unitaires.
%
% Poser les équations des deux composantes et
% résoudre mA et mB. L'axe des _x_ est
% parallèle à l'axe _a_.
%
% <<..\ch2017c.gif>>
%
% <Resoudre2equations.html
% Résoudre un système de 2 équations>
nF = [cosd(45), sind(45)]; % vecteur unitaire
nA = [1,0]; nB = [cosd(60), sind(60)];
Eq1 = 'mA*nA(1) + mB*nB(1) = mF*nF(1)';
Eq2 = 'mA*nA(2) + mB*nB(2) = mF*nF(2)';
S=solve(Eq1,Eq2,'mA','mB');
mA = eval(S.mA); mB = eval(S.mB);
A = mA*nA; B = mB*nB;
fprintf('\nComposantes obliques\n');
fprintf('A = %+6.3fi %+6.3fj kN,   ',A);
fprintf('norme = %6.3f kN\n',norm(A));
fprintf('B = %+6.3fi %+6.3fj kN,   ',B);
fprintf('norme = %6.3f kN\n',norm(B));
R = A + B; F = mF*nF; % Vérification
fprintf('Résultante R = A+B (= F)\n');
fprintf('R = %+6.3fi %+6.3fj kN,   ',R);
fprintf('norme = %6.3f kN\n',norm(R));
fprintf('F = %+6.3fi %+6.3fj kN,   ',F);
fprintf('norme = %6.3f kN\n',norm(F));

%%
% Projection orthogonales
%
% On peut obtenir la projection orthogonale en
% utilisant le produit scalaire.
% Voir la section 2/7 de Meriam à la page 67.
Pa = dot(F,nA); Pb = dot(F,nB);
Q2 = ['\nProjections orthogonales de F ',...
   'sur les axes a et b\n'];
fprintf(Q2);
fprintf('Pa = %.3f kN et ',Pa);
fprintf('Pb = %.3f kN\n',Pb)
fprintf('sous la forme vectorielle\n');
VecteurPa = dot(F,nA)*nA; % selon la définition
VecteurPb = dot(F,nB)*nB;
fprintf('Vecteur Pa = %+6.3fi %+6.3fj kN,   ',...
   VecteurPa);
fprintf('norme = %6.3f kN\n',norm(VecteurPa));
fprintf('Vecteur Pb = %+6.3fi %+6.3fj kN,   ',...
   VecteurPb);
fprintf('norme = %6.3f kN\n',norm(VecteurPb));