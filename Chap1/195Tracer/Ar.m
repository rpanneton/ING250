function Matrice=Ar(theta)
% Matrice de rotation en coordonnées
% homogènes.
% Rotation de M de theta degrés dans le
% sens inverse des aiguilles.
Matrice = [
   cosd(theta), -sind(theta), 0
   sind(theta),  cosd(theta), 0
             0,            0, 1];
