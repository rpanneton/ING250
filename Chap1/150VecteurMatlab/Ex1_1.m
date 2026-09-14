%% Solution de 1.1

%%
%  En utilisant les vecteurs u, v, w et x,
clear; clc
u = [3;-1;-2]; v =[-2;5;1];
w = [-4;-4;1]; x =[7,-1,3];
%%
% calculer les opérations vectorielles suivantes :
%% a) u + v
u + v
%% b) w + 3u
w + 3*u

%% c) 2w - v
2*w - v

%% d) v - transposée de x
v - x'

%% e) v - x
% La fonction size fournit la dimension d'une
% variable.
Dimesion_de_v = size(v)
Dimesion_de_x = size(x)

%%
% Les données (scalaire, vecteur et matrice)
% sont représentées dans Matlab que sous la forme
% de matrices.
%
% * Un scalaire devient une matrice 1 × 1.
% * Un vecteur forme une matrice 1 × n ou n × 1.
% 
% On peut donc mieux comprendre le message
% d'erreur affiché par Matlab.
% En effet, il n'est pas possible d'additionner
% un vecteur 1 × 3 avec un vecteur 3 × 1, 
% car ils n'ont pas la même dimension. 
%
v - x