%% Problème 2/45, Meriam p. 46
% <<..\ch2045.gif>>
%
% *Démarche scalaire*
%
% * Poser le système des axes _x_ et _y_ au point
% _O_.
% * Appliquer le théorème de Varignon au point
% _B_.
% * La force *T*_x_ est située sur l'axe des _x_
% et elle ne participe pas au moment _Mo_.
%
% <<..\ch2045a.gif>>
clear; clc
Mo = 72; % kN·m
OA = 12; % m
Ty = Mo/OA; % kN
OC = 30; OB = OC*cosd(60); CB = OC*sind(60); % m
theta = atan2(CB,OA+OB)*180/pi; % degrés
fprintf('Thêta = %.1f°\n',theta);
T = Ty/sind(theta); fprintf('T = %.2f kN\n',T)

%%
% La démarche vectorielle est utilisée pour
% vérifier la réponse obtenue par la démarche
% scalaire.
roC = [OC*cosd(60), OC*sind(60), 0]; % m
angleDeT = -180+theta; % degrés
mT = abs(T); % Norme de T calculé ci-dessus, kN
T = mT*[cosd(angleDeT), sind(angleDeT), 0]; % kN
fprintf('roC = %+6.2fi %+6.2fj %+6.2fk m\n',roC);
fprintf('  T = %+6.2fi %+6.2fj %+6.2fk kN\n',T);
Mo = cross(roC,T); Norme = norm(Mo);
fprintf('\nMo = %+.2fi %+.2fj %+.2fk kN·m\n',Mo);
fprintf('Norme de Mo = %.0f kN·m',Norme);
MomentPositif = Mo(3) > 0;
if(MomentPositif)
   fprintf(' dans le sens antihoraire\n');
else
   fprintf(' dans le sens horaire\n');
end
%%
% La valeur de *T* reproduit le moment *Mc*.