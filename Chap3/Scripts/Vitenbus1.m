% Vitenbus1.m - Solution 1
% Boucle comptée comme le nombre de cycles est connu à l'avance.
% Les données sont recopiées ci-dessous et zéro est ajouté.
clear; close all; clc
% V=0:16:192;
V= [0  16  32  48  64  80  96 112 128 144  160  176  192];
t= [0 0.7 1.3 1.9 2.8 3.7 4.7 6.0 7.6 9.5 11.6 14.0 19.2];
n=length(V);
for i=1:n-1 % Il faut 2 données pour un calcul d'accélération.
   a(i)=(V(i+1)-V(i))/(t(i+1)-t(i));
   t_centre(i)=(t(i+1)+t(i))/2;
end
a=a*1000/3600; % m/s²
h=figure(1); %Permet un accès aux ptés de la fig.
set(h,'Name','Vitenbus1 - solution avec boucle comptée');
plot(t_centre,a,'or',t_centre,a,'-b');
grid on;
title('Accélération du bus rapide')
xlabel('t (s)');
ylabel('a (m/s^2)');
disp('Accélération et temps')
disp([a',t_centre'])
% --------------
% En utilisant la vectorisation
clear a h i n t_centre
% V= [0  16  32  48  64  80  96 112 128 144  160  176  192];
% t= [0 0.7 1.3 1.9 2.8 3.7 4.7 6.0 7.6 9.5 11.6 14.0 19.2];
num=V(2:end)-V(1:end-1);  % donne 16 pour tous les éléments
denom=t(2:end)-t(1:end-1); % intervalles pour chacun
a=num./denom; % division élément par élément
a=a*1000/3600; % m/s²
t_centre=(t(2:end)+t(1:end-1))/2;
h=figure(2);
set(h,'Name','Vitenbus1 - par vectorisation');
plot(t_centre,a,'or',t_centre,a,'-b');
grid on;
title('Accélération du bus rapide')
xlabel('t (s)');
ylabel('a (m/s^2)');

% -- Pour information seulement ---
detail=get(h);
% structure de données contenant diverses informations
%    sur la figure.
% Pour les faire afficher, écrire dans Matlab : 
% >> detail
% detail.Position contient la position de la figure sur l'écran.
% C'est un vecteur de 4 éléments :
%   [Gauche, Bas, Largeur, Hauteur]
%    Gauche et Bas : position du coin gauche bas de la fenêtre
%    par rapport au coin bas gauche de l'écran.
%  Largeur et Hauteur sont la largeur et la hauteur de la fenêtre.

ancienne_position=detail.Position

% Déplacement de la fig. vers la droite et vers le bas.
% afin d'éviter que les 2 figures de superposent.
detail.Position(1)=detail.Position(1)+40;
detail.Position(2)=detail.Position(2)-40;
nouvelle_position=detail.Position
% L'instruction suivante spécifie les nouvelles valeurs.
set(h,'Position',detail.Position);