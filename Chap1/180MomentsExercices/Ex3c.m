%% M = U × W
%%
% Dans chacun des cas suivants, déterminer le
% norme et la direction (lorsqu'ils existent) du
% vecteur U × W.
clear; clc
%% a) : U = [2; -2; 0] et W = [1; 0; -1]
U = [2; -2; 0]; W = [1; 0; -1];
M=[+U(2)*W(3)-U(3)*W(2);
   -U(1)*W(3)+U(3)*W(1);
   +U(1)*W(2)-U(2)*W(1)]
normeDeM = sqrt(M(1)^2+M(2)^2+M(3)^2)

%% b) : U = [2; -2; 4] et W = [-1; 1; -2]
U = [2; -2; 4]; W = [-1; 1; -2];
M = cross(U,W)
%%
% La direction n'existe pas. Remarquer que les
% deux vecteurs sont linéairement dépendants,
% c'est-à-dire que l'un s'exprime en fonction de
% l'autre : U = -2W

%% c) : U = [-8; -2; -4] et W = [2; 2; 1]
U = [-8; -2; -4]; W = [2; 2; 1];
M = cross(U,W)
normeDeM = norm(M)
%
%% d) : U = [1; 1; 2] et W = [3/2; -1/2; 1]
U = [1; 1; 2]; W = [3/2; -1/2; 1];
M=[+U(2)*W(3)-U(3)*W(2);
   -U(1)*W(3)+U(3)*W(1);
   +U(1)*W(2)-U(2)*W(1)]
normeDeM = sqrt(M(1)^2+M(2)^2+M(3)^2)