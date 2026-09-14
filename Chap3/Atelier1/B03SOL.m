%% B03Sol
clear
i=0;
Somme=0;
N=input('Écrire une valeur ');
while (N~=0)
   i=i+1;
   C(i)=N;
   Somme=Somme+N;
   moyenne=Somme/i; % calcul redondant, doit être
                    % effectué après la boucle                    
   deviation(N)=N-moyenne; % deviation(i)
   N=input('Écrire une valeur ');
end
moyenne
C
deviation
