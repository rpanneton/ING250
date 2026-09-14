%% Opérateur vectoriel
clear; clc
A = [10,15,20]; B = [5,15,25];
C1 = A>B % opérateur vectoriel (>)
%%
% C1 = A>B équivaut à :
clear C1;
C1(1) = A(1)>B(1)
C1(2) = A(2)>B(2)
C1(3) = A(3)>B(3)
%%
D = [15 20 25];
C1
C2 = B<D
C3 = C1 | C2 % ou
C4 = C1 & C2 % et
%%
C5 = C1 && C2 % plante