%% Températures journalières à Lennoxville

%% Vecteurs Tmin et Tmax
clear; clc; close all;
Matrice = xlsread('Lennoxville1920.xls');
Tmax = xlsread('Lennoxville1920.xls', 'D:D');
Tmin = xlsread('Lennoxville1920.xls', 'E:E');


%% Écart journalier de températures, 5 pts

for i = 1:336
Ecart(i)=abs(Tmax)+abs(Tmin)
x(i)=(i+1);
        
plot(x,Ecart,'--b');
grid on;
hold on;
xlabel('Indices du vecteur');
ylabel('Écart (°C)');
title('Écart journalier de température en 1920');
lengend('Écart','Le plus grand');


%% Écart de températures – classification, 5 pts

c1=0; c2=0; c3=0; c4=0;

for i = 1:336 
    if(Ecart<5)
        c1 = c1+1;
       
    elseif(Ecart(i)<10)
        c2 = c2+1;
        
    elseif(Ecart(i)<20)
        c3 = c3+1;
        
    else(Ecart(i)<99)
        c4 = c4+1;
        
    end
end 
        
fprintf('Écart de températures - classification\n');       
fprintf('minime : %.0f jours\n',c1);
fprintf('petit : %.0f jours\n',c2);
fprintf('moyen : %.0f jours\n',c3);        
fprintf('grand : %.0f jours\n',c4);        
        
        
        
        
        
        