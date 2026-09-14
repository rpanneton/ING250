%% Températures journalières à Lennoxville

%% Vecteurs Tmin et Tmax
clear; clc; close all;
Matrice=xlsread('Lennoxville2010.xls');
taille = length(Matrice)
Tmax= (Matrice(:,4));
Tmin= (Matrice(:,5));







%% Écart journalier de températures, 5 pts
Ecartmax=0
for i=1:taille
   Ecart(i)=(Tmax(i)-Tmin(i));
   if Ecartmax<Ecart(i)
      Ecartmax=Ecart(i)
   end
end


plot(Ecart,'b-')
xlabel('Indices du vecteur'):
ylabel('Écart (°C)');
title('Écart journalier de température en 2010');
hold on 
c1=0;c2=0;c3=0;c4=0
plot(Ecartmax,'r-');
if(Ecart(i) > 20)
   c4=c4+1
elseif(Ecart(i)>10)
   c3=c3+1
elseif(Ecart(i)>5)
   c2=c2+1
else
   c1=c1+1
end
c1
c2
c3
c4
plot(Ecartmax,'r-');



%% Écart de températures – classification, 5 pts


 

