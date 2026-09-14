%% Affichage de vecteurs avec fprintf
%
%% Affichage par un seul fprintf
% Noter que l'espace entre les formats est
% affiché.
clear; clc;
Etoile0; % contient les données
n=length(Distance);
fprintf('Étoile   Magn.   Dist.\n');
for i=1:n
   fprintf('%s %7.2f %7.1f\n',...
      Etoile(i,:),Magnitude(i), Distance(i));
end

%% Affichage par composition
fprintf('Étoile   Magn.   Dist.\n');
for i=1:n
   fprintf('%s',Etoile(i,:));
   fprintf('%8.2f',Magnitude(i));
   fprintf('%8.1f',Distance(i));
   fprintf('\n');
end

%% Autre exemple
% * Le signe (+) fait afficher le signe.
% * Le symbole (0) force l'affichage d'un chiffre
% dans le champ réservé à la variable.
fprintf('Étoile   Magn.   Dist.\n');
for i=1:n
   fprintf('%s',Etoile(i,:));
   fprintf('%+8.2f',Magnitude(i));
   fprintf('   %05.1f',Distance(i));
   fprintf('\n');
end