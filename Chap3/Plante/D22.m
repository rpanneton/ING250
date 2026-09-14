%% Températures journalières à Lennoxville

%% Vecteurs Tmin et Tmax
clear; clc; close all;
clc; clear
A=xlsread('Lennoxville19201max.xls');
B=xlsread('Lennoxville19201min.xls');
Ecart=A-B;
n=length(Ecart);
Tmax=A(1);
Tmin=A(1);
for i=2:n
   if Tmin>A(i)
      Tmin=A(i);
   end 
   if Tmin>B(i)
      Tmin=B(i);
   end
   if Tmax<A(i)
      Tmax=A(i);
   end
   if Tmax<B(i)
      Tmax=B(i);
   end
end
fprintf('La température maximale est %.1f °C \n',Tmax);
fprintf('La température minimale est %.1f °C \n',Tmin);

      
%% Écart journalier de températures, 5 pts

x=Ecart(1);
for i=2:n
   if x<Ecart(i)
      x=Ecart(i);
   end
end

plot(Ecart,'.b')
title('Écart journalier de températures en 1920');
xlabel('Indices du vecteurs');
ylabel('Écart °C');
hold on

%% Écart de températures – classification, 5 pts

s1=0;
s2=0;
s3=0;
s4=0;
for i=1:n
   if Ecart(i)<5
      s1=s1+1;
   elseif Ecart(i)<10
      s2=s2+1;
   elseif Ecart(i)<20
      s3=s3+1;
   else Ecart(i)<99
      s4=s4+1;
   end
end
fprintf('Écart de température - classification');
fprintf('   minime : %.0f jours \n',s1);
fprintf('   petit  : %.0f jours \n',s2);
fprintf('   moyen  : %.0f jours \n',s3);
fprintf('   grand  : %.0f jours \n',s4);

   
   
   
   
   



