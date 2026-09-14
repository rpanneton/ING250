%% Du campus pricipal au campus Fleurimont
clear; clc; close all
Matrice = xlsread('EnBus.xls');
d = Matrice(:,1); % distance en km
v = Matrice(:,2); % vitesse en km/h
t = zeros(size(d)); % pseudodéclaration
% temps cumulatif en min depuis le départ

for i = 2:length(d)
   t(i) = t(i-1)+(d(i)-d(i-1))/...
      ((v(i)+v(i-1))/2) * 60; % min
end
plot(t,d,'o-b'); grid on;
xlabel('temps  min');
ylabel('distance  km')
title('VitenBus entre les 2 campus');