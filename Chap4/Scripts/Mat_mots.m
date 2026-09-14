%Mat_mots.m
clear; fclose all; clc
id=fopen('Materiau.txt','r');
A=fscanf(id,'%c');
fclose(id);
% Analyse en mode caractère
% Solution classique
idebut=1;
S=zeros(20,1);
n_te=0;
for i = 1:length(A)
   if(A(i)==' ')
      k=i-idebut;
      S(k)=S(k)+1;
      idebut=i+1;
      if(k>=5)
         if(A(i-1)=='e' && A(i-2)=='t')
            n_te=n_te+1;
         end
      end
   end
end
for i=1:20
   fprintf(1,'%3d mot(s) de %d caractère(s)\n',S(i),i);
end
fprintf(1,'\nIl y a %d mots se terminant par «te»\n',n_te);