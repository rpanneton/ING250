%% B01
clear
i=0;
Somme=0;
N=input('Vitesse ? ');
while N~=0
   i=i+1;
   C(i)=N;
   Somme=Somme+N;
   N=input('Vitesse ? ');
end
moyenne=Somme/(i-1)
[C(i)',(C(i)-moyenne)']