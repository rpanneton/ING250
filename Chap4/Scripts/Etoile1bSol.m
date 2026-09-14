%% Comparer 2 chaînes de caractères
%
clear; clc;
Etoile0; % contient les données

Nom=input('Quel est le nom de l''étoile ? ','s');
n=length(Distance);
i=1;
booleen=strcmpi(Nom,Etoile(i,:));
while(i<n & ~booleen)
   i=i+1;
   booleen=strcmpi(Nom,Etoile(i,:));
end
if(booleen)
   fprintf('L''étoile %s est située à %.0f %s\n',...
      Nom,Distance(i),'années-lumière.');
else
   fprintf('L''étoile %s %s\n',Nom,...
      'n''est pas dans la banque de données.');
end