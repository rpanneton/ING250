%% Exemple 2/4, Meriam p. 31
% Déterminer la projection de R sur l'axe b et
% la nommer Fb. 
%
% <<..\MeriamSP2_4.gif>>

%% Déterminer la norme de la résultante R.
% Débuter en traçant le parallélogramme pour
% déterminer *R*.
%
% Pour appliquer la loi des cosinus, il faut
% nommer les angles et les côtés en respectant la
% convention proposée dans les notes de cours.
%
% Pour éviter toute confusion avec la nomenclature
% utilisée pour la loi des cosinus, les
% descripteurs de Meriam sont encerclés.
%
% $$c^2 = b^2+a^2-2ab\cos C$$
%
% Il s'agit du cas côté–angle–côté connus.
%
% <<..\MeriamSP2_4a.gif>>

%%
clear ; close all; clc;
F1 = 100; F2 = 80; %N
a = F1;
C = (1/2) * (360 - 2*50) % angle C
b = F2;
c = sqrt(b^2 + a^2 - 2*a*b*cosd(C));
normeR = c

%% Angle entre R et x'
% Utiliser la loi des sinus. Les trois côtés du
% triangle ABC sont connus ainsi que l'angle _C_.
%
% Rechercher l'angle _A_.
sinusA = a*sind(C)/c;
AngleA = asind(sinusA)

%% Projection de R sur l'axe b
%
% <<..\MeriamSP2_4a.gif>>
Fb = normeR * cosd(AngleA);
fprintf('Fb est %.1f N\n',Fb);
%%
% Noter que la composante de *R* selon les axes
% _a_ et _b_ est *F2*. C'est différent de la
% projection. La composante rectangulaire et la
% projection sont identiques seulement lorsque les
% axes sont perpendiculaires.
