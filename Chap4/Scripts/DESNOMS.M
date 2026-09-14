% desnoms.m
clear; fclose('all');clc;
[nom,billets]=textread('desnoms.txt','%8c %n');
for i=1:length(billets)
   fprintf('%2.2d  %7s %2d\n',i,nom(i,:),billets(i));
end
for i=1:length(billets)
   fprintf('%7s %4d $\n',nom(i,:),billets(i)*20);
end