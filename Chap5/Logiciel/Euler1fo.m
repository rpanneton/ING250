% Euler1fo.m
function [Xn,Yn]=Euler(f,X0,Xa,Y0,M)
% initialisation
Xn=zeros([1,M+1]);
Yn=zeros([1,M+1]);
Xn(1)=X0;            % Valeur initiale de x
Yn(1)=Y0;            % Valeur initiale de y
h=(Xa-X0)/M;         % initialisation du pas

for i=1:M
   x=Xn(i);
   y=Yn(i);
   fn=eval(f);
   Xn(i+1)=Xn(i)+h;
   Yn(i+1)=Yn(i)+h*fn;
end