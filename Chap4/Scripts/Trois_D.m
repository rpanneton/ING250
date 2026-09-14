% Trois_D.m
clear; clc
T = zeros(3,4,2);
[rang,colonne,plan]=size(T)
for i=1:rang
   for j=1:colonne
      for k=1:plan
         T(i,j,k)=100*i+10*j+k;
      end
   end
end
T
whos