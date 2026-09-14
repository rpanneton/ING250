%% Températures journalières à Lennoxville
load('Lennoxville.dat')
%% Vecteurs Tmin et Tmax
clear; clc; close all;
Matrice=load('Lennoxville1920.dat');
lenght(Matrice)=nM;
Tmax=0;Tmin=0;
for i=1:nM
   if(Matrice(i)>Tmax)
      Tmax=Matrice(i);
   else(Matrice(i)<Tmin);
      Tmin=Matrice(i);
   end
end
Tmax;
Tmin;



%% Écart journalier de températures, 5 pts

for(i=1:nM)
   if(Matrice(i)>Tmax)
      Tmax=Matrice(i)
   else(Matrice(i)<Tmin)
      Tmin=Matrice(i)
   end
   Ecart(i)=Tmax-Tmin
end
plot(Ecart(i),'ob');xlabel('indice du vecteur');ylabel('Ecart °C');

%% Écart de températures – classification, 5 pts
c1=0;c2=0;c3=0;c4=0;
if(Ecart(i)<5)
  c1=c1+1
elseif(Ecart(i)<10)
   c2=c2+1
elseif(Ecart(i)<20)
   c3=c3+1
else(Ecart(i)<99)
   c4=c4+1
end
fprintf('Écart de température-classification:.0f\n')
fprintf('minime:%4.f\n',c1)
fprintf('petit:%4.f\n',c2)
fprintf('moyen:%4.f\n',c3)
fprintf('grand:%4.f\n',c4)










