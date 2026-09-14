% Portee1.m
% La portée P d'un projectile en fonction de
% l'angle thêta variant entre 10 et 60 degrés.
% Utiliser la vectorisation.
clear; home; close all;
V0=input('Quelle est la valeur de V0 ? ');
g=9.8067;
theta=linspace(10,60,300); % 300 éléments
P=V0*V0/g*sin(2*theta*pi/180);
plot(theta,P)
xlabel('Angle en degrés')	%axe des X
ylabel('Portée (m)')	%axe des Y
title(['Portée d''un projectile, V_0 : ',...
   num2str(V0),' m/s'])
grid on;

% FAQ - Peut-on utiliser une boucle explicite ?
% Non - C'est un cas trop évident à vectoriser.
% Total : 8/10.