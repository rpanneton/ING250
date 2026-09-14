%% Consommation d'essence (litres/100km)
%% Méthode traditionnelle
clear; clc; close all;
V=load('Autos.dat');
% * * * * * * * * * * * * * * * * * * * * * * * * *
SommeHybrides=0;                               % 01
nHybrides=0;                                   % 02
SommeConventionnelles=0;                       % 03
nConventionnelles=0;                           % 04
for i=1:length(V)                              % 05
   if(V(i)>=3 && V(i)<=5)                      % 06
      nHybrides=nHybrides+1;                   % 07
      SommeHybrides=SommeHybrides+V(i);        % 08
   elseif(V(i)>=6 && V(i)<10)                  % 09
      nConventionnelles=nConventionnelles+1;   % 10
      SommeConventionnelles=...                % 11
         SommeConventionnelles+V(i);           % 12
   end                                         % 13
end                                            % 14
Hybrides=SommeHybrides/nHybrides;              % 15
Conventionnelles=SommeConventionnelles/...     % 16
   nConventionnelles;                          % 17
% * * * * * * * * * * * * * * * * * * * * * * * * *
fprintf('Consommation des voitures\n');
fprintf('a) hybrides : %.2f litres/100 km\n',...
   Hybrides);
fprintf('b) convent. : %.2f litres/100 km\n',...
   Conventionnelles);

%% Vectorisation
clear; clc; close all;
V=load('Autos.dat');
% * * * * * * * * * * * * * * * * * * * * * * * * *
Hybrides=mean(V(V>=3 & V<=5));                 % 01
Conventionnelles=mean(V(V>=6 & V<10));         % 02
% * * * * * * * * * * * * * * * * * * * * * * * * *
fprintf('Consommation des voitures\n');
fprintf('a) hybrides : %.2f litres/100 km\n',...
   Hybrides);
fprintf('b) convent. : %.2f litres/100 km\n',...
   Conventionnelles);