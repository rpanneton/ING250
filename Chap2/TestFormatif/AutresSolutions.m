%% Autres solutions
%%
%
% Noter que le fichier html ne peut contenir de
% fonction _input_, comme l'indique Matlab.
%
% Faire exécuter le fichier AutresSolutions.m dans
% la fenêtre de Matlab pour obtenir une réponse.
clear; clc

%% Décision à branches multiples
% Cet arrangement ressemble à la structure avec 2
% décisions imbriquées.

fprintf('Décision à branches multiples\n');
F = input('F ? ');
if(F(1)>=0)
   Angle = atand(F(2)/F(1)); % degrés
elseif(F(2)>=0)
   Angle = atand(F(2)/F(1)) + 180;
else
   Angle = atand(F(2)/F(1)) - 180;
end
fprintf('L''angle de F est %+.1f°.\n',Angle);
fprintf('– – – – – – – – – – – – – – – – – – –\n');

%%
% Noter : au lieu de else, si on écrit
% elseif F(2)<0), enlever 1 point pour redondance.
%
% Si on écrit une instruction sur la même ligne
% qu'un « else », enlever 1 point. Ne rien écrire sur
% la même ligne qu'un « else ».

%% Décision à branches multiples avec redondance
% Les conditions propres à chaque quadrant sont
% explicitées. Cela dénote qu'il n'y a pas eu
% d'analyse.
%
% Barème : enlever 1 point par double condition.

fprintf('Décision avec redondance\n');
clear Angle
if(F(1)>=0 && F(2)>=0)     % Quadrant 1
   Angle = atand(F(2)/F(1));
elseif(F(1)<0 && F(2)>=0)  % Quadrant 2
   Angle = atand(F(2)/F(1)) + 180;
elseif(F(1)<0 && F(2)<0)   % Quadrant 3
   Angle = atand(F(2)/F(1)) - 180;
elseif(F(1)>=0 && F(2)<0)  % Quadrant 4
   Angle = atand(F(2)/F(1));
end
fprintf('L''angle de F est %+.1f°.\n',Angle);
fprintf('– – – – – – – – – – – – – – – – – – –\n');

%% Décisions disjointes
% Lorsqu'un quadrant est identifié, les
% trois autres sont exclus. Il n'y a pas lieu
% d'écrire des décisions indépendantes qui
% pourraient produire chacune un résultat.
%
% Les conditions ont été légèrement modifiées pour
% illustrer ce propos.
%
% Barème : si le code comprend 2 ou plusieurs
% décisions disjointes, enlever 8 points.

clear Angle
fprintf('Décisions disjointes\n');
if(F(1)>=0 && F(2)>=0)     % Quadrant 1
   Angle = atand(F(2)/F(1));
   fprintf('L''angle de F est %+.1f°.\n',Angle);
end
if(F(1)<=0 && F(2)>=0)  % Quadrant 2
   Angle = atand(F(2)/F(1)) + 180;
   fprintf('L''angle de F est %+.1f°.\n',Angle);
end
if(F(1)<=0 && F(2)<=0)   % Quadrant 3
   Angle = atand(F(2)/F(1)) - 180;
   fprintf('L''angle de F est %+.1f°.\n',Angle);
end
if(F(1)>=0 && F(2)<=0)  % Quadrant 4
   Angle = atand(F(2)/F(1));
   fprintf('L''angle de F est %+.1f°.\n',Angle);
end
fprintf('– – – – – – – – – – – – – – – – – – –\n');

%% Calcul sans décision
% Utiliser le fait que Matlab considère un booléen
% dans un calcul comme une donnée numérique.
%
% La solution est moins évidente. De plus, cette
% approche ne répond pas à la question posée.
fprintf('Calcul numérique avec booléens\n');
fprintf('   sans utiliser de décision\n');
FxNegatif = F(1)<0; FyPositif = F(2) >=0;
Angle = atand(F(2)/F(1)) + ...
   180*FxNegatif*(FyPositif - ~FyPositif);
fprintf('L''angle de F est %+.1f°.\n',Angle);
fprintf('– – – – – – – – – – – – – – – – – – –\n');

%% Valeurs brutes selon atand et atan2
fprintf('» Angle selon atand : %+.1f°\n',...
   atand(F(2)/F(1)));
fprintf('» Angle selon atan2 : %+.1f°\n',...
   atan2(F(2),F(1))*180/pi);