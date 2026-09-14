% Fichier Agrand.m
% Lire 3 nombres A, B et C.
% Déterminer si A>B>C
clear; home
A = input('A ? ');
B = input('B ? ');
C = input('C ? ');
if(A>B>C)
   fprintf('La relation A>B>C est vraie.\n');
else
   fprintf(['La relation A>B>C n''est pas',...
      ' satisfaite.\n']);
end
% Tester avec
% 4, 3, 0
% 4, 3, 2