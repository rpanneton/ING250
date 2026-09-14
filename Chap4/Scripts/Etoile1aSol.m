%% Affichage de vecteurs différents par fprintf
%
clear; clc;
Etoile0; % contient les données

fprintf('Étoile  Distance  Magnitude\n');
for i=1:length(Magnitude)
   fprintf('%s %9.1f %10.2f\n',Etoile(i,:),...
      Distance(i),Magnitude(i));
end
