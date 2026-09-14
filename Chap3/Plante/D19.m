%% Températures journalières à Lennoxville

%% Vecteurs Tmin et Tmax
clear; clc; close all;
Matrice=xlsread('Lennoxville1950.xls');
Tmin=0
Tmax=0

%% Écart journalier de températures, 5 pts
Ecart=Tmax-Tmin
plot(Ecart, '.b'); grid on; xlabel('Indices du vecteur'); ylabel('Écart°C');
title('Écart journalier en 1950'); legend('Ecart','Leplusgrand');
n=length(Ecart);
Leplusgrand=0;
for i=1:n
   if Ecart>1
      Leplusgrand=Leplugrand(i)+1;
   end
end
Leplusgrand
hold on(Leplusgrand, '^r');


%% Écart de températures – classification, 5 pts
minime=0;petit=0;moyen=0;grand=0;
for i=1:n
   if Ecart<5
      minime=minime+1;
   elseif Ecart<10
      petit=petit+1;
   elseif Ecart<20
      moyen=moyen+1;
   else
      grand=grand+1;
   end
end
fprintf('Écart de température - classification\n')
fprintf('minime : %0.f jours \n',minime)
fprintf('petit  : %0.f jours \n',petit)
fprintf('moyen  : %0.f jours \n',moyen)
fprintf('grand  : %0.f jours \n',grand)