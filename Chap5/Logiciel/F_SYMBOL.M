% Fichier F_symbol.m
% Illustre l'utilisation d'une
%   fonction symbolique
%   dans un programme
% On définit une fonction f
f=sym('x^3+4')
for i=1:3
   x=pi/i;   % comme en maths :
   y=eval(f) % y=f(x)
end%for
