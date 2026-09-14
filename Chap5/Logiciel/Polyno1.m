%Polyno1.m - Un script pour
% Trouver les racines du polynôme
% f (x) = x^3-5x+3 par la méthode de Newton.
clear;clc;format compact
x0=input('Écrire x0 : ');
tolerance=input('Tolérance ? ');%ex.: 1.0e-4
x=x0;
f_x=x^3-5*x+3;
f_prime=3*x^2-5;
x1=x0-f_x/f_prime;
while(abs(x0-x1)>tolerance)
   x0=x1;
   x=x0;
   f_x=x^3-5*x+3;
   f_prime=3*x^2-5;
   x1=x0-f_x/f_prime;
end
Reponse = x1