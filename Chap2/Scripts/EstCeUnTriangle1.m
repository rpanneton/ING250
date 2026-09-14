clear; clc % EstCeUnTriangle1.m
A = input('A ? ');
B = input('B ? ');
C = input('C ? ');
L1 = A + B > C
L2 = A + C > B
L3 = B + C > A
EstCeUnTriangle = L1 && L2 && L3

% Exemple :
% A, B et C : 1 2 3
% EstCeUntriangle = 0

% A, B et C : 2 3 4
% EstCeUntriangle = 1