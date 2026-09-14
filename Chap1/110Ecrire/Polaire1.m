% Polaire1.m

% ******* RENDRE CE SCRIPT PLUS LISIBLE - VOIR SOLUTIONS PRÉCÉDENTES *****

% Calculer les coordonnées polaires à partir
% des coordonnées cartésiennes d'un point P.
clear     % Efface toutes les variables.
          % Habituellement la première instruction
          % au début d'un programme.
home % Place le curseur en haut de la fenêtre.
x=input('Écrire la valeur de x : ');
y=input('Écrire la valeur de y : ');
theta_radians=atan2(y,x)
theta_degres=theta_radians*180/pi
rho=sqrt(x*x+y*y)