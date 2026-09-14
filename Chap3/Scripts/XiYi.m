%% Manipuler Xi et Yi
%%
clear; clc
X = [8,7,6,5,4,3 8], Y = [9 2 8 4 6 3 7]
% Ai = Xi multiplié par Yi élément par élément
for i = 1:length(X)
   A1(i) = X(i)*Y(i);
end
A1
A2 = X.*Y % Vectorisation

%%
% Bi =  Xi >Yi pour tous les éléments
for i = 1:length(X)
   B1(i) = X(i) > Y(i);
end
X, Y, B1
B2 = X > Y % Vectorisation

%%
% C contenant les Xi > Yi
k = 0;
for i = 1:length(X)
   if(X(i)>Y(i))
      k = k + 1;
      C1(k) = X(i);
   end
end
X, Y, C1
C2 = X(X>Y) % Filtre logique

%%
% D contenant les Yi > moyenne de X.
S = 0;
for i = 1:length(X)
   S = S + X(i);
end
moyenne = S/length(X);
fprintf('\nMoyenne de X = %.1f\n',moyenne);
k = 0;
for i = 1:length(Y)
   if(Y(i)>moyenne)
      k = k + 1;
      D1(k) = Y(i);
   end
end
X,Y,D1
D2 = Y(Y>mean(X)) % Filtre logique
