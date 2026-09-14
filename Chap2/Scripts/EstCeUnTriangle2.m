clear; clc % EstCeUnTriangle2.m
A = input('A ? ');
B = input('B ? ');
C = input('C ? ');
L1 = A + B > C;
L2 = A + C > B;
L3 = B + C > A;
EstCeUnTriangle = L1 && L2 && L3;
if(EstCeUnTriangle)
   fprintf(['A, B et C peuvent former ',...
      'un triangle.\n']);
else
   disp(['A, B et C ne peuvent pas ',...
      'former un triangle.'])
end

% Exemple :
% A, B et C : 1 2 3
% A, B et C ne peuvent pas former un triangle.

% A, B et C : 2 3 4
% A, B et C peuvent former un triangle.