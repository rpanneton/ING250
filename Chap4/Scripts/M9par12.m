%% Matrice 9 x 12
clear; clc
nRang=9;
ncol=12;
M=round(9*rand(nRang,ncol));
disp('Simple interligne')
for i=1:nRang
   fprintf('%1.0f ',M(i,1:ncol));
   fprintf('\n');
end
%%
% <<..\Feuilles.gif>>