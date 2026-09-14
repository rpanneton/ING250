%% Températures journalières à Lennoxville

%% Vecteurs Tmin et Tmax
clear; clc; close all;
Matrice=xlsread('Lennoxville2010.xls');
n=length(Matrice);
Tmin=Matrice(:,5);
Tmax=Matrice(:,4);
%% Écart journalier de températures, 5 pts
Ecart=Tmax-Tmin;
plot(Ecart,'.b');
hold on;
M=0;
for i=1:n
    if M<Ecart(i);
        M=Ecart(i);
        J=i;
    end
end
plot(J,M,'^r');
xlabel('Indices du vecteur');ylabel('Écart °C');
title('Écart journalier de température en 2010');
%legend(['Écart'],['Le plus grand'], northeast)

%% Écart de températures – classification, 5 pts
C=[0 0 0 0];
for i=1:length(Matrice)
    if Ecart(i)<=5
        C(1)=C(1)+1;
    elseif Ecart(i)<=10
        C(2)=C(2)+1;
    elseif Ecart(i)<=20
        C(3)=C(3)+1;
    elseif Ecart(i)<=99
        C(4)=C(4)+1;
    end
end
    fprintf('Écart de températures - classification'/n)
    fprintf('minime : %.0f jours'/n, C(1));
    fprintf('petit  : %.0f jours'/n, C(2));
    fprintf('moyen  : %.0f jours'/n, C(3));
    fprintf('grand  : %.0f jours'/n, C(4));