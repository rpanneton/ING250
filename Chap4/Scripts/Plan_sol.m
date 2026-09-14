clear; close all; clc
tic
fichier = 'IrisSepalePetale.gif';

%La fonction imfinfo (image-format-information)
%indique qu'il a un maximum de 256 teintes différentes
% et qu'il s'agit d'une image indexée.
Caracteristiques = imfinfo(fichier)
[Dessin, Palette] = imread(fichier);
imshow(Dessin,Palette)
Mat=double(Dessin);

somme=zeros(256,1);
[nrang,ncol]=size(Mat);

% Afficher les teintes et le nombre de
% pixels pour les 256 couleurs indexées.
%
% Noter :
% La palette est constituée d'une matrice
% comportant 256 rangées par 3 colonnes
% Chacune des rangées constitue l'index
% et comporte trois couleurs RGB.
% Matlab normalise l'intensité entre
% 0 et 1.
% Cependant, chacune des valeurs
% d'intensité occupe un octet non
% signé dans le fichier.
% On peut obtenir cette valeur en
% multipliant la valeur d'intensité
% par 255.

for i=1:nrang
   for j=1:ncol
      somme(Mat(i,j)+1)=somme(Mat(i,j)+1)+1;
   end
end
nombre=0;
for i=1:length(somme)
   if(somme(i)~=0)
      nombre=nombre+1;
   end
end
fprintf(1,' no  nombre\n');
for i=1:length(somme)
   fprintf(1,'%3d %7d\n',i,somme(i));
end

%Quelle est le numéro et la teinte (RGB)
% de la couleur dominante de l'image?

% Supposez qu'il n'y ait qu'une couleur
% dominante.

no=1;
for i=2:length(somme)
   if(somme(no)<somme(i))
      no=i;
   end
end
disp('Indice numéroté de 0 à 255')
fprintf(1,'La couleur no %d %s\n',...
   no-1,'est dominante');
fprintf(1,'   dans %d pixels.\n',...
   somme(no));
fprintf(1,'Teintes RGB : %5.3f, %5.3f, %5.3f\n',...
   Palette(no,:));
fprintf(1,['Note : l''intensité ',...
      'maximale est 1.0\n']);

% Modifier cette teinte dominante pour
% un bleu pur et faire afficher
% l'image résultante.
Palette(no,:)=[0,0,1];
figure(2);
imshow(Dessin,Palette)
toc