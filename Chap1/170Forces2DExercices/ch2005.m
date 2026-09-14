%% Problème 2/5, Meriam p. 32
% <<..\ch2005.gif>>

%%
% *Démarche vectorielle*
%
% Déplacer le système d'axes _x_ et _y_ au point
% _A_. L'origine du vecteur *T* est à _A_ et le 
% terminus pointe vers _B_.
clear; clc; close all;
mT = 900; % lb (Norme de T)
angleT = atan2(-2,+3)*180/pi; % convention de atan2
nT = [cosd(angleT), sind(angleT)]; fprintf(...
   'Vecteur unitaire nT = %+.3fi  %+.3fj\n',nT);
T = mT*nT;
fprintf('T = %+.0fi %+.0fj lb\n',T);
%%
% Expression scalaire
fprintf('T = %.0f lb à %+.0f°\n',mT,angleT);