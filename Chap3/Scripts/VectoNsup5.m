%% Nombre d'éléments de A.dat  > 5
%% Approche classique
clear; clc;
load A.dat;
compteur=0; %initialisation
for i=1:1:length(A)
   if(A(i)>5)
     compteur=compteur+1;
  end
end
fprintf('A ='); fprintf('%3.0f',A); fprintf('\n');
fprintf('Nombre = %.0f\n',compteur);

%% Opération par filtre logique
%  A > 5 génère un booléen de même taille que A.
%  A(A>5) produit un vecteur numérique contenant
%  seulement les éléments de A plus grands que 5.
fprintf('%3.0f',A);      fprintf('\n');
fprintf('%3.0f',A>5);    fprintf('\n');
fprintf('%3.0f',A(A>5)); fprintf('\n');
Nombre = length(A(A>5)); % nombre d'éléments de A(A>5)
fprintf('\nNombre = %.0f\n',Nombre);