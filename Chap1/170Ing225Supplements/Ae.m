function Matrice=Ae(Ex,Ey)
% Matrice de changement d'échelle
% en coordonnées homogènes.
Matrice = [
   Ex,  0, 0
    0, Ey, 0
    0,  0, 1];
