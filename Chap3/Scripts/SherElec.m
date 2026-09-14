%% SherÉlec ©
% Vérifier Chap3\Scripts\SherElec.m
% dans la fenêtre de Matlab, car la fonction
% _input_ n'est pas compatible avec _Publish to
% html_.
clear; clc; close all
fprintf('Écrire un à un les nombres.\n');
fprintf('Pour terminer, écrire 0\n');
N = input('temps ? ');
Somme = 0;
k = 0;
while(N~=0)
   k = k+1;
   t(k) = N;
   Somme=Somme+t(k);
   N=input('temps ? ');
end
fprintf('\nPour ces %.0f essais, ',k); 
fprintf('la moyenne = %.2f min\n',Somme/k);

% Sans le vérifier, on suppose qu'il y a au moins
% une donnée.
fprintf('\nTemps  Déviation, min\n')
for i=1:k
   fprintf('%5.1f   %+5.1f\n',t(i),t(i)-Somme/k);
end