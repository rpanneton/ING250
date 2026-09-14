%% Températures journalières à Lennoxville

%% Vecteurs Tmin et Tmax
clear; clc; close all;
xlsread Lennoxville1920.xls

%% Écart journalier de températures, 5 pts
Tmax=0; Tmin=0;
length(Matrice)=Q
i=i+1
for i=i+Q
   if(Matrice(i)>Tmax);
      Tmax=Matrice(i)+1
   else(Matrice(i)<Tmin);
      Tmin=Matrice(i)+1
   end
end

   

%% Écart de températures – classification, 5 pts

   