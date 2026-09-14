%% Exercice 1 – séquence de nombres
%
%%
clear; clc
%% Opérateur deux-points
D = 0:pi/3:pi
E = 11:15
F = 11:2:21
G = 4:-1:-2
H = -5:3:16

%% Fonction linspace
DD = linspace(0,pi,4)
EE = linspace(11,15,5)
FF = linspace(11,21,6)
GG = linspace(4,-2,7)
HH = linspace(-5,16,8)



%% Taille de G
%
% * en utilisant la fonction size,
% * avec la fonction length,
% * en visualisant avec whos.
[nRangees, nColonnes] = size(G)
Longueur = length(G)
whos