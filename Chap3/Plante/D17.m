%% Températures journalières à Lennoxville

%% Vecteurs Tmin et Tmax
clear; clc; close all;


Matrice=load('Lennoxville1920.xls');
taille=length(Matrice);



%% Écart journalier de températures, 5 pts
for i=1:taille
    Ecart(i)=Tmax(i)-Tmin(i)
end
Ecartmax=0;
for i=1:taille
    if Ecartmax<Ecart(i)
       Ecartmax=Ecart(i);
    end
end
%graphique
plot(Ecart,'ob')
%indice le plus grand
plot(Ecartmax,'or');
%documentation du graphique
xlabel('Indices du vecteur');
ylabel('Ecart °C');
title('Ecart journalier de temperature en 1920');
grid on;

%% Écart de températures – classification, 5 pts
c1=0;c2=0;c3=0;c4=0; %initialisation des compteurs
for i=1:taille
    if Ecart(i)<6
        c1=c1+1;
    elseif Ecart(i)<11
        c2=c2+1;
    elseif Ecart(i)<21
        c3=c3+1;
    else
        c4=c4+1;
    end
end

fprintf('Écart de températures – classification\n');
fprintf('minime  :%2.0f jours\n',c1);
fprintf('petit   :%2.0f jours\n',c2);
fprintf('moyen   :%2.0f jours\n',c3);
fprintf('grand   :%2.0f jours\n',c4);





