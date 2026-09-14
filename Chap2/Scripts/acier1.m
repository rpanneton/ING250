clear; clc % acier1
Re = input('Re ? ');
if(Re<250 || Re>1100)
   disp('Acier inconnu')
elseif(Re<350)
   disp('Acier à basse teneur en carbone')
elseif(Re<700)
   disp('Acier à teneur moyenne en carbone')
else
   disp('Acier à haute teneur en carbone')
end
% On peut remplacer
% disp('texte')
% par fprintf('texte\n');
