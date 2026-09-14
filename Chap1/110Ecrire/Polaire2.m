% Polaire2.m

% ******* RENDRE CE SCRIPT PLUS LISIBLE - VOIR SOLUTIONS PRÉCÉDENTES *****

% Calculer les coordonnées polaires à partir
% des coordonnées cartésiennes d'un point P.
% Utilise la fonction cart2pol (interdite pour ce pg.)
% But : illustrer son utilisation
clear
home
x=input('Écrire la valeur de x : ');
y=input('Écrire la valeur de y : ');
[theta_radians,rho]=cart2pol(y,x)
theta_degres=theta_radians*180/pi