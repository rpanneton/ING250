%% Températures journalières à Lennoxville

%% Vecteurs Tmin et Tmax
clear; clc; close all;
Matrice=xlsread('Lennoxville1920.xls')
n=length(Matrice)
itmax=0 % initialisation des compteurs
itmin=0
for i=2:1:n
   if Matrice(4,i)> Matice(4,itmax)
      i=itmax;
   end
   if Matrice(5,i)<matrice(5,itmin)
      i=itmin;
   end
end
Tmax=Matrice(itmax)
Tmin=Matrice(itmin)

%% Écart journalier de températures, 5 pts
Matrice=xlsread('Lennoxville1920.xls')
n=lenght(Matrice)
iemax=0 % initialisation du compteur
for i=2:n
   Ecart(i)=Matrice(i,4)-Matrice(i,5)
end
for i=2:n
   if Ecart(i)>Ecart(iemax)
      i=iemax
   end
end
plot('Ecart',-ob);hold on;plot(Ecart(iemax),'r^')
grid on
xlabel('Indices du vecteur')
ylabel('Écart degrées C')
title('Écart journalier de températures en 1920')

%% Écart de températures – classification, 5 pts
k1=0 % initialisation des compteurs
k2=0
k3=0
k4=0
for i=2:n
   if Ecart(i)<=5
      k1=k1+1;
   elseif Ecart(i)<=10
      k2=k2+1;
   elseif Ecart(i)<=20
      k3=k3+1;
   else
      k4=k4+1;
   end
end
fprintf('Écart de températures – classification \n')
fprintf('   minime : %4.0 jours \n',k1)
fprintf('   petit  : %4.0 jours \n',k2)
fprintf('   moyen  : %4.0 jours \n',k3)
fprintf('   grand  : %4.0 jours \n',k4)
