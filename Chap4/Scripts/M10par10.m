%% Affichage de matrices

%%
% Fabriquer la matrice
clear; clc
n=10; M=zeros(n);
for i=1:10
   for j=i:n
      M(i,j)=round(25+50*rand(1));
   end
end
%% a) Affichage de la matrice au complet
for i=1:n
   fprintf('%2.0f ',M(i,:));
   fprintf('\n');
end

%% b) Affichage des valeurs non nulles
fprintf('Matrice triangulaire supérieure\n');
for i=1:n
   for j=1:i-1
      fprintf('   ');%2 espaces vides +1 espace=3
   end
   fprintf('%2.0f ',M(i,i:n));
   fprintf('\n');
end

%% c) Fonction triu
MM=triu(round(25+50*rand(10)));
for i=1:length(MM)
   fprintf('%2.0f ',MM(i,:));
   fprintf('\n');
end

%%
% <<..\Feuilles.gif>>