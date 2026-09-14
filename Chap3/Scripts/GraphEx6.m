%% GraphEx6
%%
clear; clc; close all;
%%
% Générer une centaine de valeurs entre
%
% $$ -3\pi $$ et  $$ +3\pi $$
%
for i = 1:100
   x(i) = -3*pi + (i-1)*(6*pi)/100;
   y_1(i) = 2 - 5*x(i) + x(i)^2;
   y_2(i) = 4*pi + 2*x(i);
end

%% Graphique
% Tracer y_1 en bleu, y_2 en rouge.
plot(x,y_1,'b-', x,y_2,'r-');
% Compléter le graphique.
grid on;
xlabel('x');
ylabel('y');
% Le titre est réuni dans une variable.
% Cela ressemble à un vecteur.
% Une chaîne de caractères EST un vecteur.
Debut = 'Intersections de ';
Eq1 = 'y_1 = 2 - 5x + x^2';
ET = '  et  ';
Eq2 = 'y_2 = 4\pi + 2x';
Titre = [Debut Eq1 ET Eq2];
title(Titre);
legend('y_1', 'y_2');

%%
% Remarquer la façon dont Matlab
% affiche le texte y_1, y_2, x^2 et pi
% sur le graphique.