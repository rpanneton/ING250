%% Exemple 2/2, Meriam p. 30
% Exprimer les deux forces concourantes au point B
% en fonction des vecteurs unitaires *i* et *j*
%
% *F* = Fx *i* + Fy *j*.
%
% Calculer la résultante *R*.
%
% <<..\MeriamSP2_2.gif>>

%%
% *Procédure à suivre*
%
% Pour calculer les composantes de *T* selon les
% axes _x_ et _y_, il faut déterminer l'angle ABD.
%
% Établir d'abord la longueur des
% segments BD et CD, le segment AC étant connu.
% 
%  Solution : Fichier SP2_2.m

clear; close all; clc;
BC = 6; AC = 3; % pi
BD = BC*sind(60); CD = BC*cosd(60);
AD = AC + CD;
angle_ABD = atan2(-BD,-AD)*180/pi % convention
                                  % de atan2
%%
% *Convention*
% 
% <<..\MeriamFig2_5.gif>>

%%
mP = 800; mT = 600; % N (normes)
P = mP*[1, 0];
VecteurUnitaire =[cosd(angle_ABD), sind(angle_ABD)];
T = mT*VecteurUnitaire;
% Résultante = somme des composantes
R = P + T;
fprintf('R : %.0fi  %+.0fj N\n',R);