%% Termes de la série de Fibonacci.

%%
% *Explication de l'algorithme*
%
%  Série :     00 01 01 02 03 05 08 13 21 etc.
%  génération 1 : Ta Tb Tc
%  génération 2 :    Ta Tb Tc
%  génération 3 :       Ta Tb Tc
%  génération 4 :          Ta Tb Tc
%  génération 5 :             Ta Tb Tc
%
% Tc est la somme des 2 termes précédents.
%
clear;clc
Ta=1;
Tb=1;
i = 1;
while(i<=10)
	Tc=Ta+Tb; Ta=Tb; Tb=Tc;
   i = i + 1;
end
fprintf(['Population de la 10e génération',...
   ' = %.0f\n'],Tc);