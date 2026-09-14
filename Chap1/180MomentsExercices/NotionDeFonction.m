%% Notion de fonction mathématique
% Le script génère les figures utilisées dans les
% notes de cours sur ce sujet.
%
% Le script accède aux structures de données pour
% modifier la taille et la position des figures
% sur l'écran.

%%
clear; clc; close all % NotionDeF.m
jaune = [255/255,255/255,204/255];

%% Fonction biunivoque (pour x > 0)
figure(1); set(gcf,'Position',[5,400,225,225],...
   'MenuBar','none','Color',jaune);
x=linspace(0,+3);y=x.^2;
plot(x,y); axis([0,+3,0,9]); grid on;
set(gca,'Position',[0.16, 0.17, 0.75, 0.68],...
   'Color',jaune,'FontSize',10);
set(gca,'XTick',0:+3,'yTick',[0 1 4 9]);
xlabel('abscisses x');
ylabel('ordonnées y');
title('$$y=f(x)=x^2$$','Interpreter','latex',...
   'FontSize',14);

%% Fonction non biunivoque
figure(2);set(gcf,'Position',[245,400,300,225],...
   'MenuBar','none','Color',jaune);
x=linspace(-3,+3);y=x.^2;
plot(x,y); axis([-3,+3,0,9]); grid on;
set(gca,'XTick',-3:+3,'yTick',[0 1 4 9]);
set(gca,'Position',[0.16, 0.17, 0.75, 0.68],...
   'Color',jaune,'FontSize',10);
xlabel('abscisses x');ylabel('ordonnées y');
title('$$y=f(x)=x^2$$','Interpreter','latex',...
   'FontSize',14);

%% Fonction discontinue
figure(3);set(gcf,'Position',[560,400,300,225],...
   'MenuBar','none','Color',jaune);
x=linspace(-3,-0.25); y=1./x;
plot(x,y); axis([-3,+3,-4,+4]); grid on; hold on;
x=linspace(0.25,+3); y=1./x; plot(x,y);
set(gca,'XTick',-3:+3);
set(gca,'Position',[0.16, 0.17, 0.75, 0.68],...
   'Color',jaune,'FontSize',10);
xlabel('abscisses x'); ylabel('ordonnées y');
title('$$y=f(x)=1/x$$','Interpreter','latex',...
   'FontSize',14);

%% Fonction discrète
figure(4);set(gcf,'Position',[10,50,300,225],...
   'MenuBar','none','Color',jaune);
t=[0:10];z=[12,14,15,14,16,8,12,15,12,13,18];
hplot4=plot(t,z,'ob'); axis([0,10,0,20]); grid on;
set(gca,'Position',[0.16, 0.17, 0.75, 0.68],...
   'Color',jaune,'FontSize',10);
xlabel('temps t ms');ylabel('ordonnées z');
title('z  par rapport à l''ensemble suspendu')

%% Modification des propriétés dans le « plot »
% La figure(5) représente la figure(4) modifiée.
% Au lieu de tracer (plot) et de modifier les
% propriétés à l'aide de la commande *set*,
% les propriétés désirées sont ajoutées en
% arguments à la fonction plot.
figure(5);set(gcf,'Position',[330,50,300,225],...
   'MenuBar','none','Color',jaune);
plot(t,z,'ob',...
   'MarkerSize',10,... taille des cercles 
   'MarkerFaceColor',[0.9,0.9,0.9]); % gris pâle
axis([0,10,0,20]); grid on;
set(gca,'Position',[0.16, 0.17, 0.75, 0.68],...
   'Color',jaune,'FontSize',10);
xlabel('temps t ms');ylabel('ordonnées z');
title('z  par rapport à l''ensemble suspendu')