%% Températures journalières à Lennoxville

%% Vecteurs Tmin et Tmax
clear; clc; close all;

Matrice = xlsread('Lennoxville1980.xls')

n=length(Matrice);

for i=2:n;
   if Matrice(i)>Matrice(i-1);
      Tmax=Matrice(i);
   elseif Matrice(i)<Matrice(i-1);
      Tmin=Matrice(i);
   end;
end;

plot('Matrice'); xlabel('Abcisse'); ylabel('Ordonnées'); 
%% Écart journalier de températures, 5 pts

Ecart=zeros(4,n);

minime=0;
petit=0;
moyen=0;
grand=0;

for i=1:n;
    if ecart<5 & ecart>0;
        minime=minime+1;
    elseif ecart<20;
        petit=petit+1;
    elseif ecart<99;
        grand=grand+1;
    end;
end;
    





hold on;


%% Écart de températures – classification, 5 pts
