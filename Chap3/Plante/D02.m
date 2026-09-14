%% Températures journalières à Lennoxville

%% Vecteurs Tmin et Tmax
clear; clc; close all;

xlsread('Lennoxville1980.xls');
max=D
min=E
ecart=max-min
%% Écart journalier de températures, 5 pts
load('Lennoxville1980.xls');
plot(x,y, 'ob')
xlabel('Indices du vecteur')
ylabel('Écart °C')
title('Écart journalier de températures en 1980')
hold on


%% Écart de températures – classification, 5 pts
n=365
Annee=n*V
k1=0; k2=0; k3=0; k4=0;
for i=1:Annee
   if i<6
      k1=k1+1
   elseif i<11
      k2=k2+1
   elseif i<20
      k3=k3+1
   else
      k4=k4+1
   end
end
fprintf('Écart de température - classification\n')
fprintf('Minime : %5,0f, \n',k1)
fprintf('Petit : %5,0f, \n',k2)
fprintf('Moyen : %5,0f, \n',k3)
fprintf('Grand : %5,0f, \n',k4)