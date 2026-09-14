clear; clc; % JourFor.m
TJ = load('Juillet.dat');
T = input('T ? ');
Jour=0;% défaut--> aucun jour
k=0 ;% k=1 --> jour identifié
for i=1:length(TJ)
   if(TJ(i)>T && k<1)
      Jour = i;
      k = k+1; % k = 1 est ok.
   end
end
Jour