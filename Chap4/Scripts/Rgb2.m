%RGB2
% Illustre la lecture de fichiers
% d'images en 24 bits, 256 couleurs
% et 16 couleurs (fichiers indexés).

% Le fichier créé par RGB1 a été lu
% par Paint et sauvegardé en 256 et
% 16 couleurs.

% On relit et affiche tous ces fichiers.

clear; close all; clc
disp('Information sur les fichiers')
imfinfo('Rgb24bit.bmp')
imfinfo('Rgb256co.bmp')
imfinfo('Rgb16co.bmp')

%Lecture des fichiers
Rgb24bit=imread('Rgb24bit.bmp');
[Rgb256co,index256co]=imread('Rgb256co.bmp');
[Rgb16co,index16co]=imread('Rgb16co.bmp');
disp('Tableau 24 bits comme RGB1')
Rgb24bit
disp('Matrice avec 256 couleurs')
Rgb256co
disp('Valeurs des index')
% noter 0 est index256co(1,:)
fprintf(1,'224 RGB : %4.2f %4.2f %4.2f\n',index256co(225,:));
fprintf(1,'  0 RGB : %4.2f %4.2f %4.2f\n',index256co(1,:));
fprintf(1,' 28 RGB : %4.2f %4.2f %4.2f\n',index256co(29,:));
fprintf(1,'  3 RGB : %4.2f %4.2f %4.2f\n',index256co(4,:));
fprintf(1,'255 RGB : %4.2f %4.2f %4.2f\n',index256co(256,:));
fprintf(1,'252 RGB : %4.2f %4.2f %4.2f\n',index256co(253,:));
fprintf(1,'227 RGB : %4.2f %4.2f %4.2f\n',index256co(228,:));
fprintf(1,' 31 RGB : %4.2f %4.2f %4.2f\n',index256co(32,:));
disp('Matrice avec 16 couleurs')
Rgb16co
disp('Valeurs des index')
% noter 0 est index16co(1,:)
fprintf(1,' 9 RGB : %4.2f %4.2f %4.2f\n',index16co(10,:));
fprintf(1,' 0 RGB : %4.2f %4.2f %4.2f\n',index16co(1,:));
fprintf(1,'10 RGB : %4.2f %4.2f %4.2f\n',index16co(11,:));
fprintf(1,'12 RGB : %4.2f %4.2f %4.2f\n',index16co(13,:));
fprintf(1,'15 RGB : %4.2f %4.2f %4.2f\n',index16co(16,:));
fprintf(1,'11 RGB : %4.2f %4.2f %4.2f\n',index16co(12,:));
fprintf(1,'13 RGB : %4.2f %4.2f %4.2f\n',index16co(14,:));
fprintf(1,'14 RGB : %4.2f %4.2f %4.2f\n',index16co(15,:));

%On affiche les images en spécifiant la grosseur
%i.e. on force la grosseur des pixels
%imshow donnerait une image minuscule
h1=figure(1);
image(Rgb24bit);axis image;
set(h1,'NumberTitle','off',...
   'Name','Rgb24bit',...
   'Position',[10,30,270,220]);
h2=figure(2);
image(Rgb256co);
colormap(index256co);
axis image;
set(h2,'NumberTitle','off',...
   'Name','Rgb256couleurs)',...
   'Position',[280,30,270,220]);
h3=figure(3);
image(Rgb16co);
colormap(index16co);
axis image;
set(h3,'NumberTitle','off',...
   'Name','Rgb16couleurs',...
   'Position',[550,30,270,220]);