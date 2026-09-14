%% Capitalisation2
clear; clc
Montant = 1000; t = 4/100;
n = Genere(-8,8) % années
if(n>0)
   V0 = Montant;
   Capitalisation_Vn = V0*(1+t)^n
else
   Vn = Montant;
   Actualisation_V0 = Vn*(1+t)^n % n est négatif.
end