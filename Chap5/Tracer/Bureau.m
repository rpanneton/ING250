% Bureau.m
% Bureau simulé 
% et mouvement du curserur
% Lire une image windows bit map de
% 256 couleurs représentant le bureau

%Préparation
clear
close all
format short g
home
disp('Placer la fenêtre Matlab')
disp('à gauche de l''écran.')
disp(' ')
disp('Ajuster la largeur juste')
disp('assez pour lire cette phrase.')
disp(' ')
disp('Appuyer sur')
disp('«Entrée»')
pause
home

%Les données sont lues dans A
%Une matrice de la classe unit8
% entier 1 octet non signé
% (unsigned integer 8)
% Cardinal (pas de signe + ou -)
% pouvant contenir 256 informations.
[A,couleur]=imread('bureau.bmp');

% whos pour plus d'information
[m,n] = size(A);

%Propriétés de la figure
figure('Units','pixels','Position',[100 100 n m])
%Affiche A comme une image
image(A); 
% Couleur représentée par chacun
% des nombres
% Trois valeurs par couleur
% Rouge, Vert, Bleu (RGB)
colormap(couleur);
%gca : graphic current axes
%Règle la position des axes à 0,0
%(bas, gauche et pleine longueur (1)
set(gca,'Position',[0 0 1 1]);
%Déplace la fig. en haut à droite.
%gcf : graphic current figure
%Lecture de la position (get)
P=get(gcf,'position');
%Réglage de la position (set)
%[gauche,droite,largeur,hauteur]
set(gcf,'position',[800-P(3)-10,600-P(4)-75,P(3:4)]);
%Début de l'acquisition
disp('Lire les instructions')
disp('     dans la fenêtre.')
disp(' ')
disp('Imaginer un mouvement et')
disp('     prendre 5 points.')

% Noter: on peut laisser le doigt
%    enfoncer sur une touche.
% L'acquisition s'effectue alors
% selon la vitesse de l'ordinateur.
% Pour mieux saisir l'effet de la
%   spline, ne prendre que
%   quelques points.

i=1;
P0=ginput(1);
x(i)=P0(1);
y(i)=P0(2);
tic
t(i)=toc;
disp(i)
P1=ginput(1);
while(~isempty(P1))
   i=i+1;
   x(i)=P1(1);
   y(i)=P1(2);
   t(i)=toc;
   disp(i)
   P0=P1;
   P1=ginput(1);
end
refresh %l'image
disp('x, y et t :')
disp([x',y',t'])

%Spline (courbe lisse)
%i.e Segments ajustés jusqu'à la
%    dérivée seconde entre ceux-ci.

tt=linspace(t(1),t(length(t)));
xx=spline(t,x,tt);
yy=spline(t,y,tt);

%Affichage de x lu et x lissé
figure(2)
plot(t,x,':r',t,x,'or',tt,xx,'b')
T1='Effet de la spline est plus';
T2=' apparent avec peu de points';
title([T1,T2])
xlabel('temps')
ylabel('x lu (rouge)  et lissé (bleu)')
disp('Appuyer sur')
disp('«Entrée»')
pause

%Affichage des données lues et lissées
figure(3);
subplot(2,2,1)
plot(t,x,'b')
xlabel('temps')
ylabel('x_{Lu}')

subplot(2,2,2)
plot(t,y,'g')
xlabel('temps')
ylabel('y_{Lu}')

%Courbes lissées
subplot(2,2,3)
plot(tt,xx,'b')
xlabel('temps')
ylabel('x_{Lissé}')

subplot(2,2,4)
plot(tt,yy,'g')
xlabel('temps')
ylabel('y_{Lissé}')

disp('----------------')
disp('Lire la fin du')
disp('fichier Bureau.m')
disp('----- fin ------')

%Comme vous avez maintenant
% --> une courbe lisse
% --> x et y paramétrés = f(tt)
% calculer les vitesses
% et les accélérations.
