%% Températures journalières à Lennoxville

%% Vecteurs Tmin et Tmax
clear; clc; close all;
Matrice= xlsread('Lennoxville1920.xls');
Tmin=Matrice(:,5);
Tmax=Matrice(:,4);
n=length(Matrice);
for i=2:n
   j=i-1;
   if(i>j)
      Tmax=i;
   end
   if (i<j)
      Tmin=i
   end
      
end
Tmax
Tmin

      



      
   


%% Écart journalier de températures, 5 pts
Ecart


%% Écart de températures – classification, 5 pts
