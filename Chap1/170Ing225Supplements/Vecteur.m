function Vecteur(Cloture,V,Origine,Couleur)
% Cloture : 
% « axis » doit être défini.
% ex. axis equal; hold on; axis([-8,+8,-6,+6]);
% Les différents paramètres de la flèche
% représentant le vecteur sont définis en fonction
% de la diagonale de la clôture de la figure.
%
% Le vecteur est orienté selon l'axe des x et
% l'origine est à (0,0)
norme = norm(V); Terminus = norme;

% Coordonnées de la flèche en sens antihoraire
diagonale = round(norm(Cloture));
LongueurPointe = diagonale/25;
LargeurPointe = diagonale/50;
DemiTige = diagonale/300;
% La pointe est constituée d'un triangle orienté
% vers la droite et sis à l'axe des x.
xy = [
   0,-DemiTige
   Terminus-LongueurPointe,-DemiTige
   Terminus-LongueurPointe,-LargeurPointe
   Terminus,0
   Terminus-LongueurPointe,+LargeurPointe
   Terminus-LongueurPointe,+DemiTige
   0,+DemiTige
   % patch ferme automatiquement le circuit
   ];
x=xy(:,1)'; y=xy(:,2)';
% FaceAlpha et EdgeAlpha
% Transparence (0 = opaque, 1 = invisible)
% EdgeAlpha est moins opaque que FaceAlpha pour
% faciliter la transition entre le fond de la
% figure et la couleur du vecteur.
% FaceAlpha (0.5) permet de voir la grille des
% coordonnées (grid on).

% Coordonnées homogènes
z = ones(size(x)); xyz=[x;y;z];
angle = atan2(V(2),V(1))*180/pi;
xyzR=At(Origine)*Ar(angle)*xyz;
x=xyzR(1,:);y=xyzR(2,:);
% h=patch(x,y,Couleur);
patch(x,y,Couleur,'LineStyle','-',...
   'FaceAlpha',0.6,'EdgeColor',Couleur,...
   'EdgeAlpha',0.3);