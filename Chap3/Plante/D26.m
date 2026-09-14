%% Températures journalières à Lennoxville

%% Vecteurs Tmin et Tmax
clear; clc; close all;
Matrice = xlsread('Lennoxville2010.xls');
Tmax= Matrice(length(1),5);
Tmin = Matrice(length(1),4);




%% Écart journalier de températures, 5 pts
Ecart = Tmax-Tmin;
nv= length(Ecart);
Jmax=Ecart(1);
for i = 2;nv
   if(Jmax<Ecart(i))
      Jmax= Ecart(i);
   end
end
plot(Ecart,'bdiamond');grid on;
title(' Écart journalier de température en 2010');
xlabel('indices du vecteur');
ylabel('Écart °C');
hold on;
plot(Jmax,'tr');
legend('Ecart','Le plus grand','location','NorthEast');




%% Écart de températures – classification, 5 pts
C1=0;C2=0;C3=0;C4=0;
for i=1:nv
   if(Ecart(i)>20)
      C1=C1+1;
   elseif(Ecart(i)>10)
      C2=C2+1;
   elseif(Ecart(i)>5)
      C3= C3+1;
   else
      C4=C4+1;
   end
end
fprintf('Écart de températures - classification\n')
fprintf('Minime : %4.0f jours\n',C4);
fprintf('petit  : %4.0f jours\n',C3);
fprintf('Moyen  : %4.0f jours\n',C2);
fprintf('grand  : %4.0f jours\n',C1);