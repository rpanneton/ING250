% Bulle.m
% Algorithme du tri par la méthode de la bulle.
clear; clc
V=[32,49,23,17,8,47,35,21,3,16];
fprintf('%2d ',V);
fprintf('\n');
n=length(V);
UnChangement=logical(1);
while(UnChangement)
   UnChangement=logical(0); % Faux
   for i=2:n
      if(V(i-1)>V(i))
         LeTampon=V(i);
         V(i)=V(i-1);
         V(i-1)=LeTampon;
         UnChangement=logical(1); % Vrai
         fprintf('%2d ',V);
         fprintf('\n');
      end
   end
end