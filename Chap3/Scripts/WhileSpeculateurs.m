%% Recherche de données
clear; clc; close all;
V = load('Speculateurs.txt');

%%
j = 1;
while(V(j)~=60.2)
   j = j + 1;
end
fprintf('Sentinelle 1 : V(%.0f) = %.1f\n',j,V(j));

%%
j = j + 1; j0 = j; % indice du début
S = 0; % sommateur
while(V(j)~=60.3)
   S = S + V(j);
   j = j + 1;
end
fprintf('Sentinelle 2 : V(%.0f) = %.1f\n',j,V(j));
fprintf('Nombre de données valides = %.0f\n',j-j0);
fprintf('Moyenne = %.2f\n',S/(j-j0));

%%
plot(1:j0-1,V(1:j0-1),'.b',...
   j0:j-1,V(j0:j-1),'or',...
   j:length(V),V(j:end),'.b');
xlabel('indice'); ylabel('Données')
title('Données de Speculateurs.txt');
legend('fausses','valides','Location','Best');