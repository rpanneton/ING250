%% Kuujjuaq de juillet 1947 à 2005
clear; close all; clc;
Temperature = load('Kuujjuaq.dat');
% pseudodeclaration
annees = zeros(size(Temperature));

for i = 1:length(Temperature)
   annees(i) = 1947-1+i;
end

% Varia - solution
plot(annees,Temperature,'om',...
   'MarkerFaceColor','y');
hold on; % afin d'ajouter la courbe suivante.

%%
% *Calcul de la moyenne*
Somme = 0;
for i = 1:length(Temperature)
   Somme = Somme + Temperature(i);
end
moyenne = Somme/length(Temperature);
% Il faut deux points pour tracer une droite.
plot([annees(1),annees(end)],[moyenne,moyenne],':b');
legend('Données','Moyenne',...
   'Location','SouthEast');
% grid on;
xlabel('année');
ylabel('T (°C)');
title('Kuujjuaq de juillet 1947 à 2005');
%%
help plot