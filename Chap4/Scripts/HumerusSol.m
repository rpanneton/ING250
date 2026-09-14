%% Analyse d'humérus de squelettes
%% Étape 1 – lecture
clear; close all; clc;
H = load('Humerus.txt');
G = H(:,1); D = H(:,2);

%% Étape 2 – graphique de données
figure(1);hold on;grid on;axis([280,340,280,340]);
plot(G,D,'or');
xlabel('Humérus gauche en mm');
ylabel('Humérus droit en mm');
title('Humérus de squelettes non dissociés')
plot([280,340],[280,340],'-b');

%% Étape 3– quotient D divisé par G
X = D./G;
fprintf('%7.5f,%8.5f,%8.5f,%8.5f,%8.5f\n',X);
   
%% Étape 4 – moyenne et écart-type
fprintf('Moyenne de l''échantillon : %.5f\n',...
   mean(X));
fprintf(['Écart-type de l''échantillon : ',...
   '%.5f\n'],std(X));

%% Étape 5 – moyenne et écart-type (reprise)
% Calculer la moyenne arithmétique *mXe* des
% quotients *X* des *N* squelettes de
% l'échantillon selon la formule suivante :
%
% $$mXe =
% \left( \sum_{i=1}^N X_i \right) / N
% $$
%
% Calculer l'écart-type des quotients *X* de
% l'échantillon selon la formule suivante :
%
% $$Se = \sqrt{
% \left( \frac{1}{N-1} \right)
% \sum_{i=1}^N \left(X_i-mXe\right)^2
% }
% $$
%
somme = 0; N = length(X);
for i = 1:N
   somme = somme + X(i);
end
mXe = somme/N

somme2 = 0;
for i = 1:N
   somme2 = somme2 + (X(i)-mXe)^2;
end
Se = sqrt((1/(N-1))*somme2)
%%
% <<..\Feuilles.gif>>