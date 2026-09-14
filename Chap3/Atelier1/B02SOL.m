%% B02Sol
clear
i=0;
N=input('Écrire un temps ');
Somme=0;
while N~=0
   Somme=Somme+N;
   i=i+1;
   C(i)=N;
   moyenne=Somme/i;
   deviation=(N-moyenne); 
   N=input('Écrire un temps ');
end
% La moyenne est calculée dans la boucle (redondance)
% La déviation est calculée dans la boucle,
% Puisque la moyenne change tout le temps, la valeur
% n'est pas exacte.
% De plus, deviation n'est pas un vecteur et
% ne conserve q'une seule valeur
moyenne
C(i) % Écrit 1 seule valeur
deviation
