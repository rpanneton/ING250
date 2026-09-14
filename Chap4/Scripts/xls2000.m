% Fichier xls2000.m
clear; clc
C1 = 'Moyenne mensuelle des températures ';
C2 = 'journalières du mois de novembre 2000';

M = xlsread('Novembre.xls');
[nrang,ncol]=size(M);
An2000=6;
somme = 0;
for i=1:nrang
   somme=somme+M(i,An2000);
end
fprintf([C1,'\n',C2,'\nXm = %.1f °C\n'],...
   somme/nrang);
