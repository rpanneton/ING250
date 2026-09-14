%% Températures journalières à Lennoxville

%% Vecteurs Tmin et Tmax
clear; clc; close all;
Matrice = xlsread('Lennoxville1920.xls')
Tmax = Matrice(.:4) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Tmin = Matrice(.:5) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Écart journalier de températures, 5 pts
for i = 1:length(Matrice)
   Ecart(i) = Tmax(i)-Tmin(i);
end
plot(Ecart('.b'))
xlabel('Indice de vecteur')
ylabel('Écart °C')
title('Écart journalier de températures en 1920')
grid on
hold on
%% Écart de températures – classification, 5 pts
minime=0;petit=0;moyen=0;grand=0;
for i = 1:length(Matrice);
   if (Ecart(i)<=5);
      minime=minime+1;
   elseif (Ecart(i)<=10);
      petit=petit+1;
   elseif (Ecart(i)<=20);
      moyen=moyen+1;
   else
      grand=grand+1;
   end
end
fprintf('Écart de températures - classification\n')
fprintf('  minime : %5.1f jours \n',minime)
fprintf('  petit  : %5.1f jours \n',petit)
fprintf('  moyen  : %5.1f jours \n',moyen)
fprintf('  grand  : %5.1f jours \n',grand)
      