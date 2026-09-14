%% Distan1.m
% Tracer un graphique de la distance parcourue
% en fonction du temps t = 0 à t = 10 s
%%
clear; close all; clc;
for i = 201
   x(i) = (i-1)/20;
t=linspace(0,10,300); % 300 éléments
x0=input('x0 (m) ? ');
v0=input('v0 (m/s) ? ');
a=input('accélération (m/s²) ? ');
x=x0+v0*t+0.5*a*t.^2; % Noter l'opérateur {.^}
                      % élément par élément.
% FAQ - Peut-on utiliser une boucle explicite ?
% Oui-Mais : C'est perdre son temps, et l'instruction
%   précédente est plus facile à interpréter.
% C'est un cas évident à vectoriser.
% Total : 8/10.
plot(t,x);
title(['x_0 : ',num2str(x0),' m,    ',...
      'v_0 : ',num2str(v0),' m/s,    '...
      'a : ',num2str(a),' m/s^2']);
ylabel('Distance (m)')
xlabel('temps (s)');
grid on;