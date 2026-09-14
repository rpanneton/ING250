%% B03
clear
i=0;
Somme=0;
N=input('Écrire une valeur ');
while (N~=0)
   i=i+1;
   C(i)=N;
   Somme=Somme+N;
   moyenne=Somme/i;
   deviation(N)=N-moyenne;
   N=input('Écrire une valeur ');
end
moyenne
C
deviation
