% Identifier le pléonasme dans la décision.
clear; clc % EstCeUnTriangle3.m
A=input('A ? '); B=input('B ? '); C=input('C ? ');
L1 = A + B > C; L2 = A + C > B; L3 = B + C > A;
EstCeUnTriangle = L1 && L2 && L3;

if(EstCeUnTriangle == true)
   fprintf(['A, B et C peuvent former ',...
      'un triangle.\n']);
else
   disp(['A, B et C ne peuvent pas ',...
      'former un triangle.'])
end