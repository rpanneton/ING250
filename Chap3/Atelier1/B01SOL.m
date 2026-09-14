%% B1Sol
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
moyenne=Somme/(i-1) % Écrire i
[C(i)',(C(i)-moyenne)'] % Écrit un seul couple.
