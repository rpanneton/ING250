%Arc
%Arc de cercle dans le quadrant 3
%Exemple avec une boucle for
N=100; %n d'intervalles
tmin=pi/10;
tmax=pi/3;
dt=(tmax-tmin)/N;
x(1)=cos(tmin);
y(1)=-sin(tmin);
t=tmin;
for i=1:N
   t=t+dt;
   x(i+1)=cos(t);
   y(i+1)=-sin(t);
end

%On utilise la vectorisation
% des équations de Matlab
t=linspace(pi/10,pi/3);
% Quadrant 1
xx=cos(t);
yy=sin(t);
plot(x,y,'bo',xx,yy,'g.');
