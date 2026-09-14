%% Températures journalières à Lennoxville

%% Vecteurs Tmin et Tmax
clear; clc; close all;
matrice = xlsread('Lennoxville1980.xls');
tmin = matrice(:,5);
tmax = matrice(:,4);
temp_min = matrice(2,4);
temp_max = matrice(2,4);
taille = length(matrice);
for i = matrice(:,5)
   if matrice(temp_min) > v(i)  ;
      temp_min = v(i) 
   end
end
for i = matrice(:,4)
   if matrice(temp_max) > v(i) ;
      temp_max = v(i) 
   end
end


%% Écart journalier de températures, 5 pts


%% Écart de températures – classification, 5 pts
