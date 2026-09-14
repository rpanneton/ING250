%% Initialisation des variables X et Y
clear; clc
X = rand(1,100000);
Y = rand(1,100000);

%% Utilisation de la vectorisation
tic
XYvectorise = X.*Y; 
toc

%% Utilisation d’une boucle WHILE
tic
i=1;
%XY=zeros(size(X));
while i<length(X)
   XY(i) = X(i)*Y(i);
   i=i+1;
end
toc

%% Utilisation d’une boucle FOR
tic
%XY2=zeros(size(X));
for i = 1:length(X)
   XY2(i) = X(i)*Y(i);
end
toc