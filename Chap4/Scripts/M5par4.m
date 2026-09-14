%% Matrice de dimension 5 x 4
%%
clear; clc
nLigne=5; ncol=4;
M=zeros(nLigne,ncol); % pseudo-déclaration
for i=1:nLigne
   for j=1:ncol
      M(i,j)=10*i+j;
   end
end
%% Affichage par défaut
M
%% Affichage à simple interligne
for i=1:nLigne
   fprintf('%2.0f  ',M(i,1:ncol));
   fprintf('\n');
end

fprintf('\nou encore :\n\n')
for i=1:nLigne
   fprintf('%4.0f',M(i,1:ncol));
   fprintf('\n');
end

%% Affichage à double interligne
for i=1:nLigne
   fprintf('%3.0f  ',M(i,1:ncol));
   fprintf('\n\n');
end
%%
% <<..\Feuilles.gif>>