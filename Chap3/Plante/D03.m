%% Températures journalières à Lennoxville

%% Vecteurs Tmin et Tmax
clear; clc; close all;
Matrice=xlsread('Lennoxville1980.xls');
nMatrice=length(Matrice);
tempmax=zeros(1,nMatrice);
tempmin=zeros(1,nMatrice);
for i=1:nMatrice
	tempmax(i)=Matrice(i,4);
    tempmin(i)=Matrice(i,5);
end
Tmax=0; Tmin=0;
for i=1:nMatrice
    if tempmax(i)>tempmax(i+1)
        Tmax=tempmax(i);
    else
        Tmax=tempmax(i+1);
    end
end
for i=1:nMatrice
    if tempmin(i)<tempmin(i+1)
        Tmin=tempmin(i);
    else
        Tmin=tempmin(i+1);
    end
end
Tmax
Tmin

%% Écart journalier de températures, 5 pts
Ecart=zeros(1,nMatrice);
for  i=1,nMatrice
    Ecart(i)=Matrice(i,4)-Matrice(i,5);
end
plot(Ecart,'.b');
xlabel('Écart °C');
ylabel('Indices du vecteur');
title('Écart jounalier de températures en 1980');
legend(' .b Écart \n ^r Le plus grand');
nEcart=length(Ecart);
Ecartmax=0
for i=1:nEcart
    if Ecart(i)>Ecart(i+1)
        Ecartmax=Ecart(i);
    end
end
hold on; 
plot(Ecartmax, '^r');
grid on;

%% Écart de températures – classification, 5 pts
minime=0;
petit=0;
moyen=0;
grand=0;
for i=1:nEcart
    if Ecart(i)<6
        minime=minime+1;
    elseif Ecart(i)<11
        petit=petit+1;
    elseif Ecart(i)<21;
        moyen=moyen+1;
    else
        grand=grand+1;
    end
end
fprintf('Écart de températures - classification\n')
fprintf('   minime : %+0.2f jours\n',minime)
fprintf('   petit : %+0.2f jours\n',petit)
fprintf('   moyen : %+0.2f jours\n',moyen)
fprintf('   grand: %+0.2f jours\n',grand)