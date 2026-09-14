%Polyno4.m - Un script et deux fonctions
%   numériques f_x(x) et f_prime(x) pour
% Trouver les racines du polynôme
% f (x) = x^3-5x+3 par la méthode de Newton.
clear;clc;format compact
x0=input('Écrire x0 : ');
tolerance=input('Tolérance ? ');%ex.: 1.0e-4
x1=x0-f_x(x0)/f_prime(x0);
while(abs(x0-x1)>tolerance)
   x0=x1;
   x1=x0-f_x(x0)/f_prime(x0);
end
Reponse = x1