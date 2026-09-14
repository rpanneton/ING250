%Mat_nomb.m
clear; fclose all;
id=fopen('Materiau.txt','r');
A=fscanf(id,'%c');
fclose(id);
A=double(A);
idebut=1;
S=zeros(20,1);
n_te=0;
for i = 1:length(A)
   if(A(i)==32)
      k=i-idebut;
      S(k)=S(k)+1;
      idebut=i+1;
      if(k>=5)
         if(A(i-1)==101 && A(i-2)==116)
            n_te=n_te+1;
         end
      end
   end
end
for i=1:20
   fprintf(1,'%3d série(s) de %d nombre(s)\n',S(i),i);
end
fprintf(1,'\nIl y a %d séries se terminant par 116 et 101\n',n_te);
clear