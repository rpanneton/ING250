%% Températures journalières à Lennoxville
...???
%% Vecteurs Tmin et Tmax
clear; clc; close all;
read Lennoxville2010.xls ;
n = length (Matrice);
Tmin = Matrice(1);
Tmax = Matrice(1);
for i=2:n
    if (Matrice(i)<Matrice(1))
        Tmin = Matrice(i);
    elseif (Matrice(i)== Matrice(1))
        Tmin=Matrice (1);
    end
    if (Matrice(i)>Matrice(1))
        Tmax = Matrice(i);
    elseif (Matrice(i)==Matrice(1))
        Tmax = Matrice(1);
    end
end

      
%% Écart journalier de températures, 5 pts
plot(Lennoxville2010,'ob');
xlabel('Indice du vecteur');
ylabel('Ecart C');
title('Écart journalier de température en 2010');
grid on

%% Écart de températures – classification, 5 pt