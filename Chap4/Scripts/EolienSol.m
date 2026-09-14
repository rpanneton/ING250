%% Refroidissement éolien en janvier
%% Lecture
clear;close all;clc
T=load('TempC.txt'); [nr,nc]=size(T);

%% Température la plus froide du mois
imin=1; jmin=1;
for i=1:nr
   for j=1:nc
      if(T(imin,jmin)>T(i,j))
         imin=i; jmin=j;
      end
   end
end
fprintf(['À %.0fh le %.0f janvier, ',...
   'T = %.1f °C.\n\n'],jmin,imin,T(imin,jmin));
somme=0;
for j=1:nc
   somme=somme+T(imin,j);
end
fprintf(['La température moyenne du jour ',...
   '= %.1f °C.\n\n'],somme/nc);

%% Extrait
fprintf(...
   'Jour     1h     6h    11h    16h    21h\n');
for i=1:5:31
   fprintf('%4d',i);
   fprintf('%7.1f',T(i,1:5:21));
   fprintf('\n')
end

%% Calcul du refroidissement éolien
V=load('Vents.txt'); V10m=V(21,:);
T_air = T(21,:); h = 1:24;
R = 13.12 + 0.6215.*T_air ...
   - 11.37.*V10m.^0.16 ...
   +0.3965.*T_air.*V10m.^0.16;
fprintf('\nVecteur R (refroidissement éolien) :\n');
for i=1:6:length(R)
   fprintf('%7.1f',R(i:i+5));
   fprintf('\n')
end

%% Graphique des températures
plot(h,T_air,'ro-', h,R,'b*-'); grid on;
xlabel('heure');ylabel('Température °C');
title('Température le 21 janvier 2008');
legend('Temp. de l''air','Temp. éolienne',...
   'Location','SouthEast');
%%
% <<..\Feuilles.gif>>