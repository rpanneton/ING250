%% Normale = A × B
% Dans la structure cubique à face centrée de
% l'aluminium, déterminer les indices du plan
% compact où sont situés les deux vecteurs.
%
% La réponse correspond à la normale du plan.
%
% Calculer la surface du triangle délimité par
% les deux vecteurs compacts (droite où les atomes
% se touchent). Considérez que l'arête du cube est
% l'unité.
%
% <<..\cfcAl.gif>>
%%
clear; clc
A = [0 1 -1];
B = [-1 1 0];
Normale = cross(A,B);
plan = 'Indice du plan compact : ';
fprintf([plan,'(%.0f %.0f %.0f)\n'],Normale);
% La surface du triangle est la moitié de celle du
% parallélogramme.
Surface = norm(Normale)/2;
fprintf('Surface du triangle = %.4f\n',Surface);
