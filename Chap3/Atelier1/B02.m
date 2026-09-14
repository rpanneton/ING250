%% B02
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
moyenne
C(i)
deviation
