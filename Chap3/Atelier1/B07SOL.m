%% B07Sol
clear
A=0;
X=1; % devrait être initialisé à zéro
i=1;
while i~=0
   i=input('Écrire le temps en min ');
   M=(A+i)/X;
   A=A+i;
   X=X+1;
   V(i)=i;% possiblement V(X)
end
M
V % peut-être X
(V-M) % à transposer

% Remarquer comment le nom des variables influence
%  l'idée que l'on se fait du programme.
% Il faut porter une attention particulière
% pour découvrir le sommateur et le compteur.