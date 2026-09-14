%% Capitalisation1
% Que valent 1000 $ placés à 4% pendant 8 ans ?
clear; clc;
V0 = 1000; n = 8; t = 4/100;
Vn = V0*(1+t)^n

%%
% Quelle valeur faut-il placer aujourd’hui à 4%
% pour obtenir 1000 $ dans 8 ans ?
Vn = 1000;
V0 = Vn*(1+t)^-n