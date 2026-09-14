%% Températures journalières à Lennoxville

%% Vecteurs Tmin et Tmax
clear; clc; close all;
Matrice1=xlsread('Lennoxville2010.xls','D2:D365');
Matrice2=xlsread('Lennoxville2010.xls','E2:E365');
Taille=length(Matrice1);
Tmin=Matrice2(1);
Tmax=Matrice1(1);
for i=2:Taille
   if (Tmin>Matrice2(i))
      Tmin=Matrice2(i);
   end
   if (Tmax<Matrice1(i))
      Tmax=Matrice1(i);
   end
end
Tmax
Tmin

%% Écart journalier de températures, 5 pts
EMax=0
EMin=0
for i:Taille
   Emax(i)=
   Emin(i)

%% Écart de températures – classification, 5 pts
