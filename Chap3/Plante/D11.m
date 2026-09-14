%% Températures journalières à Lennoxville

%% Vecteurs Tmin et Tmax
clear; clc; close all;
Matrice=xlsread('Lennoxville2010');
Taille=length(Matrice);
Tmax=Matrice(1,4);
Tmin=Matrice(1,5);
for i=1:Taille
    if Tmax<Matrice(i,4);
        Tmax=Matrice(i,5);
    end
    if Tmin>Matrice(i,4);
        Tmin=Matrice(i,5);
    end
end
fprintf('Tmax = %.0f °C\n',Tmax)
fprintf('Tmin = %.0f °C\n',Tmin)

%% Écart journalier de températures, 5 pts
Ecartmax=(Matrice(1,4)-Matrice(1,5));
Indice=0;
for i=1:Taille
Ecart(i)=(Matrice(i,4)-Matrice(i,5));
if (Ecart(i)>Ecartmax)
    Ecartmax=Ecart(i);
    Indice=i;
end
end
fprintf('L''écart maximal est %.0f °C\n',Ecartmax)
Plot(Ecart,'.b');
hold on;
Plot(Ecart(Indice),'^r');
grid on;
xlabel('Indices du vecteur');ylabel('Écart °C');title('Écart journalier de température en 2010')
legend('Écart','Le plus grand')

%% Écart de températures – classification, 5 pts
minime=0;
petit=0;
moyen=0;
grand=0;
for i=1:Taille
    if (Ecart(i)<5)
        minime=minime+1;
    else
        if(Ecart(i)<10)
        petit=petit+1;
        else
            if(Ecart(i)<20)
                moyen=moyen+1;
            else
                grand=grand+1;
            end
        end
    end
end
fprintf('Écart de température - classification\n')
fprintf('minime : %4.0f jours\n',minime)
fprintf('petit  : %4.0f jours\n',petit)
fprintf('moyen  : %4.0f jours\n',moyen)
fprintf('grand  : %4.0f jours\n',grand)





