%% Vectorisation – description
% Matlab est un langage de programmation qui
% utilise des matrices et des vecteurs comme
% données élémentaires, et il est spécialement
% conçu pour effectuer des calculs sur ce type de
% données.
%
% La vectorisation consiste à convertir une
% boucle comptée _for_ en opérations vectorielles
% équivalentes. Elle comporte deux avantages :
%
% * le code est plus concis,
%
% * le programme tourne plus rapidement, car il
% tire profit des algorithmes d'optimisation, dont
% ceux des opérateurs vectoriels.

%% Boucle comptée (for)
clear;clc;close all;
for i = 1:37
   x(i)=(i-1)*10; % angle thêta
   y(i)=sind(x(i))+sind(3*x(i));
end

%% Boucle implicite, vectorisation
xxx = 0:10:360; % boucle implicite, opérateur « : »
yyy =sind(xxx)+sind(3*xxx); % vectorisation

%%
plot(x,y,'-b'); grid on;
hold on; plot(xxx,yyy,'or');
xlabel('\theta,  degrés'); ylabel('y');
title('y = sin(\theta) + sin(3\theta)');
legend('for–end','vectorisation','Location','Best');

%% Exemple X.*Y : multiplier élément par élément
X = [10, 20, 30, 40];
Y = [ 6,  2,  7,  3];
for i = 1:4
   XY(i) = X(i)*Y(i);
end
fprintf('%5.0f',XY); % le format est vectorisé
fprintf('\n');

%%
XYvectorise = X.*Y; % version vectorisée
fprintf('%5.0f',XYvectorise); fprintf('\n');

%%
% Pour plus de détails, voir la documentation de
% MatWorks dans Ing250\Zip\VectoM65.pdf et prendre
% note que ce document n'est pas matière à examen.
%
% <<..\Feuilles.gif>>