%polyno5.m - Une fonction qui fait appel
%  à deux fonctions numériques
%    f_x(x) et f_prime(x) pour
% Trouver les racines du polynôme
% f (x) = x^3-5x+3 par la méthode de Newton.
function x1=polyno5(x0,tolerance)
x1=x0-f_x(x0)/f_prime(x0);
while(abs(x0-x1)>tolerance)
   x0=x1;
   x1=x0-f_x(x0)/f_prime(x0);
end
% Reponse est x1