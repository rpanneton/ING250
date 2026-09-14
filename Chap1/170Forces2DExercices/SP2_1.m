%% Exemple 2/1, Meriam p. 29
%  Fichier SP2_1.m
%
% Déterminer les composantes scalaires selon les
% axes x et y des trois forces concourantes au
% point A.
% 
% <<..\MeriamSP2_1.gif>>

%%
clear; close all; clc;
F1 = 600; F2 = 500; F3 = 800; % N
F1x = F1*cosd(35); F1y = F1*sind(35);
fprintf('F1x : %+.0f lb  et  ',F1x);
fprintf('F1y : %+.0f lb\n',F1y);

%%
angleF2 = atan2(3,-4)*180/pi; % degrés
F2x = F2*cosd(angleF2); F2y = F2*sind(angleF2);
fprintf('F2x : %+.0f lb  et  ',F2x);
fprintf('F2y : %+.0f lb\n',F2y);
%%
angleF3 =atan2(-0.1-0.3, 0.4-0.2)*180/pi; % degrés
F3x = F3*cosd(angleF3); F3y = F3*sind(angleF3);
fprintf('F3x : %+.0f lb  et  ',F3x);
fprintf('F3y : %+.0f lb\n',F3y);

%% 
% Ajout
fprintf('Rx : %+.0f lb  et  ',F1x+F2x+F3x);
fprintf(' Ry : %+.0f lb\n',F1y+F2y+F3y);