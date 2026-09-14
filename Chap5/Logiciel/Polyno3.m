%Polyno3.m - Un script et
%    2 fonctions symboliques pour
% Trouver les racines du polynôme
% f (x) = x^3-5x+3 par la méthode de Newton.
clear;clc;format compact
f_x=sym('x^3-5*x+3'); % Pseudo-déclaration
f_prime=sym('3*x^2-5');% des fonctions

x0=input('Écrire x0 : ');
tolerance=input('Tolérance ? ');%ex.: 1.0e-4
x=x0;
x1=x0-eval(f_x)/eval(f_prime);
while(abs(x0-x1)>tolerance)
   x0=x1;
   x=x0;
   x1=x0-eval(f_x)/eval(f_prime);
end
Reponse = x1
% Note :
% eval(S) évalue la représentation
%     des caractères contenus dans
%     l'expression symbolique S.