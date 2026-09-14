%% Températures journalières à Lennoxville

%% Vecteurs Tmin et Tmax
clear; clc; close all;
Matrice1=xlsread('Lennoxville1920.xls','D2:E336');
Matrice2=xlsread('Lennoxville1920.xls','E2:E336');
Tmax=Matrice1(1);
Tmin=Matrice2(1);
L=length(Matrice1);
for i=1:L
   if(Tmax<Matrice1(i))
      Tmax=Matrice1(i);
   end
   if(Tmin>Matrice2(i))
      Tmin=Matrice2(i);
   end
end
fprintf('La température minimale et la ') 
fprintf('température maximale sont \n')
fprintf('%.1f°C et %.1f°C',Tmin,Tmax)
%% Écart journalier de températures, 5 pts
for i=1:L
   Ecart=Matrice1(i)-Matrice2(i);
end
plot(Ecart,'db')
title('Écart journalier de température en 1920')
xlabel('indices du vecteur')
ylabel('Écart (°C)')

%% Écart de températures – classification, 5 pts
c1=1; c2=1 ; c3=1 ; c4=1;
fprintf('Écart de température - classfication')
for i=1:L
   if(Ecart(i)<=5)
      c1=c1+1;
   elseif(Ecart(i)>5)
      c2=c2+1;
   elseif(Ecart(i)>10)
      c3=c3+1;
   elseif(Ecart(i)>20)
      c4=c4+1;
   end
end
fprintf('minime : %.0f jours',c1)
fprintf('petit : %.0f jours',c2)
fprintf('moyen : %.0f jours',c3)
fprintf('grand : %.0f jours',c4)
   

