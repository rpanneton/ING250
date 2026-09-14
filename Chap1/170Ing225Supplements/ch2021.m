%% Problème 2/21, Meriam p. 36
% <<..\ch2021.gif>>

%% Démarche scalaire
%
% $$ R_x=\sum F_x\;\; {\rm et}\;\;R_y=\sum F_y $$
%
% Construire le parallélograme et utiliser les
% relations trigonométriques.
clear; close all; clc;
mF1 = 1400; mF2 = 800; mR = 2000; % lb (Normes)
%%
% <<..\ch2021a.gif>>
%
% Les trois côtés du triangle sont connus et
% l'angle C est inconnu. Appliquer la loi des
% cosinus.
%
%  mF2^2 = mF1^2 + mR^2 - 2*mF1*mR*cosd(bêta)
beta = acosd( (mF1^2 + mR^2 - mF2^2)/(2*mF1*mR) );
fprintf('Angle bêta = %.2f°\n',beta);
%%
% Les trois côtés du triangle sont connus de même
% qu'un angle. Appliquer la loi des sinus.
%
%  sind(alpha)/mF1 = sind(bêta)/mF2
alpha = asind(mF1*sind(beta)/mF2);
theta = alpha + beta;
fprintf('Angle thêta = %.1f°\n',theta);

%% Vérification par la démarche vectorielle
%  Vecteur = Norme * vecteur unitaire
F1 = mF1*[0,1]; % selon la convention de atan2.
F2 = mF2*[cosd(90-theta), sind(90-theta)];
R = F1 + F2;
fprintf('F1 = %+5.0fi %+5.0fj lb\n',F1);
fprintf('F2 = %+5.0fi %+5.0fj lb\n',F2);
fprintf(' R = %+5.0fi %+5.0fj lb\n',R);
fprintf('Norme de R = %0.f lb\n',norm(R));