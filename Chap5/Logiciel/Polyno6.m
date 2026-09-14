%Polyno6.m - Une fonction qui fait appel
%    à deux sous-fonctions numériques
%    f(x) et fp(x) pour
% Trouver les racines du polynôme
% f(x) = x^3-5x+3 par la méthode de Newton.
function x1=polyno6(x0,tolerance)
x1=x0-f(x0)/fp(x0);
while(abs(x0-x1)>tolerance)
   x0=x1;
   x1=x0-f(x0)/fp(x0);
end
    % Reponse est x1
function y=f(x)
% Calcule y=x^3-5x+3
y = x^3-5*x+3;
    % ----------
function y=fp(x)
% calcule y=3x^2-5
y = 3*x^2-5;