%% WhileSinh
% Calculer la série
%
% <<..\sinh.gif>>
%
% La condition d'arrêt est la différence entre 2
% termes. Utiliser une boucle while.

%%
clear; clc;
x = 3*pi/2; termeA = x;
numerateur = x*x*x;
denominateur = 3*2;
termeB = numerateur/denominateur;
LeSinh = termeA + termeB;
F = 3; % F ! est la factorielle du dénominateur
while(abs(termeA-termeB)>=1e-4)
   numerateur = numerateur*x*x;
   denominateur = denominateur*(F+1)*(F+2);
   F = F+2;
   termeA = termeB;
   termeB = numerateur/denominateur;
   LeSinh =LeSinh + termeB;
   fprintf('%12.8f\n',LeSinh);
end
fprintf('\n%12.8f selon sinh(3*pi/2)\n',sinh(x));