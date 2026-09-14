%Rosace
%Rosace à trois feuilles
%r=a*sin(3*theta)
a=2;
N=100; %n d'intervalles
tmin=0;
tmax=2*pi;
dt=(tmax-tmin)/N;
r=a*sin(3*tmin);
x(1)=r*cos(tmin);
y(1)=r*sin(tmin);
t=tmin;
for i=1:N
   t=t+dt;
   r=a*sin(3*t);
   x(i+1)=r*cos(t);
   y(i+1)=r*sin(t);
end
plot(x,y);
