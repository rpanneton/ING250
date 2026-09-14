% Selectio.m
% Algorithme du tri par sélection
clear; clc
V=[32,49,23,17,8,47,35,21,3,16];
fprintf('%2d ',V);
fprintf('\n');
n=length(V);
for j=1:n-1
   for i=j+1:n
      if(V(j)>V(i))
         LeTampon=V(j);
         V(j)=V(i);
         V(i)=LeTampon;
         fprintf('%2d ',V);
         fprintf('\n');
      end
   end
end