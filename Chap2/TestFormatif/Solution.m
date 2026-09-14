%% Question – ajuster atand
% Analyse – La fonction atand affiche la même
% valeur d'angle que atan2 dans les quadrants 1 et
% 4, c'est-à-dire lorsque la composante en x de F
% est positive.
%
% Lorsque la composante en x est négative, deux
% cas se présentent selon le signe de la
% composante en y de F.
%
% Noter que le fichier html ne peut contenir de
% fonction _input_, comme l'indique Matlab.

%%
clear; clc
F = input('F ? ');
Angle = atand(F(2)/F(1)); % degrés
if(F(1)<0)
   if(F(2)>=0)
      Angle = Angle + 180;
   else
      Angle = Angle - 180;
   end
end
fprintf('L''angle de F est %+.1f°.\n',Angle);
fprintf('– – – – – – – – – – – – – – – – – – –\n');

%%
% Valeurs brutes selon atand et atan2
fprintf('» Angle selon atand : %+.1f°\n',...
   atand(F(2)/F(1)));
fprintf('» Angle selon atan2 : %+.1f°\n',...
   atan2(F(2),F(1))*180/pi);

%%
% La décision imbriquée est la solution la plus
% simple. L'utilisation de variables booléennes
% peut contribuer à la clarté du code.
%
% Exemple :
%
%  ComposanteEnX_negative = F(1)<0;
%  if(ComposanteEnX_negative) etc.