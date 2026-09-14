% Velo2.m
% La piste est tracée en 3D
% On peut déplacer la piste dans les 3 axes
%   en cliquant sur le symbole qui ressemble
%   à une flèche courbée.
clear;close all;clc
M=xlsread('Velodrom.xls');
n=length(M);

% Construction du tableau des coordonnées
% X : anneau intérieur, anneau extérieur, anneau extérieur
x=[M(:,2);M(:,5);M(:,5)];
% Y : anneau intérieur, anneau extérieur, anneau extérieur
y=[M(:,3);M(:,6);M(:,6)];
% Z : anneau intérieur, anneau extérieur, anneau intérieur
% La section 3 représente les points au niveau 0 à l'ext.
z=[M(:,4);M(:,7);M(:,4)];
Sommet=[x,y,z];
% Contruction du tableau des sommets (vertex)
% (Anglais : coordonnées des sommets
%            Vertex coordinates : vertices)
% Dessus de la piste
for i=1:n-1
    Facette(i,:)=[i,i+n,i+n+1,i+1];
end
Facette(n,:)=[n,n+n,n+1,1];

% Couleurs de base
rouge=[1,0,0];
vert=[0,1,0];
bleu=[0,0,1];
jaune=[1,1,0];
magenta=[1,0,1];
cyan=[0,1,1];
Couleur=[
    magenta % 11, 21, 31, etc,
    jaune;vert;jaune;vert
    bleu     % 6, 16, 26, etc.
    vert;jaune;vert;jaune];

CouleurFacette(1,:)=rouge;
for i=2:n
    CouleurFacette(i,:)=Couleur(mod(i,10)+1,:);
end

% Côtés verticaux autour de la piste
for i=n+1:2*n-1
    Facette(i,:)=[i,i+n,i+n+1,i+1];
end
Facette(2*n,:)=[2*n,3*n,2*n+1,n+1];

% Couleur

vertjaune(1,:)=[0.5,0.6,0];
vertjaune(2,:)=[0.7,0.7,0];
for i=n+1:2*n
    CouleurFacette(i,:)=vertjaune(mod(i,2)+1,:);
end

patch('Vertices',Sommet,'Faces',Facette,...
      'FaceVertexCData',CouleurFacette,...
      'FaceColor','flat');
view(3)%Vue standard
axis equal;
%pause
view(2) % Vue du dessus

% Documentation dans Matlab
% Nous examinons une manière de représenter
% la piste en trois D.
% 
% La fonction patch de Matlab permet la construction
% de facettes. Écrire:
% 
% >> doc patch
% et cliquer sur creating 3_D Models with Patches
% Ensuite
% Introduction to Patch Object
% Lire la section portant sur
% Defining patch
% 
% Nous utilison la seconde méthode;
% c'est la méthode habituelle utilisée 
% dans les logiciels spécialisés en CAO.
% 
% Dans le chapitre
% Behavior of the patch Function,
% cliquer sur Patch Properties et examiner
% comment on représente une facette.