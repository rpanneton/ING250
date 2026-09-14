% Euler1pg.m
clear;clc
LaFonction=sym('-2*x*y^2');
X0=0; %Intervalle
Xa=1;
Y0=1;
M=10;
% Appel
[x,y]=Euler1fo(LaFonction,...
   X0,Xa,Y0,M);
% Affichage
disp('Ité.    X      Y')
for i=1:M+1
   fprintf(1,'%3d %6.2f %8.4f\n',...
      i-1,x(i),y(i));
end
disp('Solution exacte :')
disp('1/(x^2+1)')