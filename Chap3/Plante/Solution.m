%% Températures journalières à Lennoxville

%% Vecteurs Tmin et Tmax
clear; clc; close all;
Matrice = xlsread('Lennoxville1920.xls');
Tmax = Matrice(:,4);
Tmin = Matrice(:,5);

%% Écart journalier de températures, 5 pts
Ecart = zeros(size(Tmax)); % pseudodéclaration
for i = 1:length(Tmax)
   Ecart(i) = Tmax(i)-Tmin(i);
end
plot(Ecart,'.'); grid on; hold on;
Grand = 1;
for i = 1:length(Ecart)
   if(Ecart(i)>Ecart(Grand))
      Grand=i;
   end
end
plot(Grand,Ecart(Grand),'^r');
xlabel('Indices du vecteur'); ylabel('Écart °C');
title('Écart journalier de températures en 1920');
legend('Écart','Le plus grand','Location','Best');

%% Écart de températures – classification, 5 pts
S=[0,0,0,0];
for i = 1:length(Ecart)
   if(Ecart(i)<5)
      S(1)=S(1)+1;
   elseif(Ecart(i)<10)
      S(2)=S(2)+1;
   elseif(Ecart(i)<20)
      S(3)=S(3)+1;
   else
      S(4)=S(4)+1;
   end
end
fprintf('Écart de températures – classification\n');
fprintf('   minime : %3.0f jours\n',S(1));
fprintf('   petit  : %3.0f jours\n',S(2));
fprintf('   moyen  : %3.0f jours\n',S(3));
fprintf('   grand  : %3.0f jours\n',S(4));

%%
% Vérification non demandé :
Verification = sum(S)== length(Ecart)