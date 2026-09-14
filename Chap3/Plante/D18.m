%% Températures journalières à Lennoxville

%% Vecteurs Tmin et Tmax
clear; clc; close all;
Matrice=xlsread('lennoxville2010.xls');
n=length(Matrice);
Tmin=Matrice(1,5);
Tmax=Matrice(1,4);
for i=1:n
    if Tmin>Matrice(i,5)
        Tmin=Matrice(i,5);
    end
    if Tmax<Matrice(i,4)
        Tmax=Matrice(i,4);
    end
end
Tmin
Tmax

%% Écart journalier de températures, 5 pts

for i=1:n
    Ecart=Matrice(i,4)-Matrice(i,5)    
end

plot(Ecart);
hold on;
plot
grid on;
xlabel('indices du vecteur');
ylabel('Écart°C');
title('Écart journalier de température en 1920');

%% Écart de températures – classification, 5 pts

fprintf('Écart de température - classification\n')
if Ecart<6
    fprintf('minime:%.0f jours\n')
elseif Ecart<11
    fprintf('petit:%.0f jours\n')
elseif Ecart<21
     fprintf('moyen:%.0f jours\n')
else 
     fprintf('grand:%.0f jours\n')
end