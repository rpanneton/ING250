%% Températures journalières à Lennoxville

%% Vecteurs Tmin et Tmax
clear; clc; close all;
Matrice = xlsread('Lennoxville2010.xls');
n=length(Matrice);
Tmax = Matrice(1,4);
Tmin = Matrice(1,5);
for i= 2:n
   if Matrice(i,4)>Tmax
      Tmax=Matrice(i,4);
   end
   if Matrice(i,5)<Tmin
      Tmin=Matrice(i,5);
   end
end
Tmax
Tmin

%% Écart journalier de températures, 5 pts

EcartG = (Tmax-Tmin);
plot(n,Ecart'sb');
hold on;
plot(n,EcartG,'or');
grid on;
xlabel('Indice du vecteur'); ylabel('Ecart °C');
title('Écart de température en 2010');
legend('Écart','Le plus grand');
%% Écart de températures – classification, 5 pts
