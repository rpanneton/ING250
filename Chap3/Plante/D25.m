%% Températures journalières à Lennoxville

%% Vecteurs Tmin et Tmax
clear; clc; close all;
matrice=xlsread('Lennoxville1920.xls');
Tmax=matrice(:,4);
Tmin=matrice(:,5);
%% Écart journalier de températures, 5 pts
Nmax=length(Tmax);
Nmin=length(Tmin);
Ecart=0;
for i=1:1:Nmax
   Ecart(i)=(Tmax(i)-Tmin(i))
end
plot(Ecart,'b.')
xlabel('Indices du vecteur');
ylabel('Écart degré C');
title('Écart journalier de températures')
Hold on

%% Écart de températures – classification, 5 pts
fprintf('Écart de températures - classification\n')
Somme=0;
for i=0:1:5
   Somme=Somme+Ecart(i)
end
fprintf('minime :   %f jours\n',somme)