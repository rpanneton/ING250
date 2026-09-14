%% Boucles – trois catégories, survol

%% Boucle comptée (for)
clear;clc;close all;
for i = 1:37
   x(i)=(i-1)*10; % angle thêta
   y(i)=sind(x(i))+sind(3*x(i));
end
plot(x,y,'-ob');grid on;
xlabel('\theta,  degrés'); ylabel('y');
title('y = sin(\theta) + sin(3\theta)');

%% Boucle à fin conditionnelle (while)
i = 0; theta = 0;
while(theta<=360)
   i = i + 1;
   xx(i) = theta;
   yy(i)=sind(xx(i))+sind(3*xx(i));
   theta = theta + 10;
end
plot(xx,yy,'-ob');grid on;
xlabel('\theta,  degrés'); ylabel('y');
title('y = sin(\theta) + sin(3\theta)');

%% Boucle implicite, vectorisation
xxx = 0:10:360; % boucle implicite
yyy =sind(xxx)+sind(3*xxx); % vectorisation
plot(xxx,yyy,'-ob');grid on;
xlabel('\theta,  degrés'); ylabel('y');
title('y = sin(\theta) + sin(3\theta)');

%%
% *Le format est vectorisé.*
fprintf('xxx(1 à 5) = [ ');
fprintf('%.0f ',xxx(1:5));
fprintf(']\n');

%%
% *Générer un vecteur ayant des valeurs
% linéairement espacées,*
%
% par exemple, 12 valeurs entre zéro et pi :
V = linspace(0,pi,12);
% La vectorisation du format permet de générer
% 3 lignes avec une seule instruction.
fprintf('V(1 à 12) =\n');
fprintf('%7.4f %7.4f %7.4f %7.4f\n',V);
