%% Températures journalières à Lennoxville

%% Vecteurs Tmin et Tmax
clear; clc; close all;
V = xlsread('Lennoxville1920.xls','D2:E336');
Tmin = 0 ;
Tmax = 0;

for i= 1:length(V);
    if (V(i)) > Tmax;
        Tmax = V(i);
    end
    if (V(i)) < Tmin;
        Tmin = V(i);
    end
end
fprintf('Tmax : %2.0f\n',Tmax)
fprintf('Tmin : %2.0f\n',Tmin)
    


%% Écart journalier de températures, 5 pts
Ecart = 0;
for i = 1:length(V)
    Ecart(1) = V(1) - V(1,2)
    if Ecart(1)>
end
plot(Ecart,'db')
xlabel('Indices du vecteur');ylabel('Écart °C');
title('Écart journalier de températures en 1920');
legend('Ecart','Le plus grand'); hold on;

%% Écart de températures – classification, 5 pts
c1=0;c2=0;c3=0;c4=0;
for i = 1:length(Ecart)
    if Ecart(1)<6
        c1= c1 +1;
    elseif Ecart(1)<11
        c2= c2 + 1;
    elseif Ecart(1)<21
        c3 = c3 +1;
    else 
        c4 = c4 +1;
    end
end

    
    fprintf('Écrat de températures - classification\n')
    fprintf('minime : %4.0f jours\n',c1)
    fprintf(' petit : %4.0f jours\n',c2)
    fprintf(' moyen : %3.0f jours\n',c3)
    fprintf(' grand : %4.0f jours\n',c4)
