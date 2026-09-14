%% B07
A=0;
X=1;
i=1;
while i~=0
   i=input('Écrire le temps en min ');
   M=(A+i)/X;
   A=A+i;
   X=X+1;
   V(i)=i;
end
M
V
(V-M)