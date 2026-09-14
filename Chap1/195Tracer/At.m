function Matrice=At(V)
% Matrice de translation en coordonnées
% homogènes.
% V = [tx, ty], vecteur de translation
tx = V(1); ty = V(2);
Matrice = [
    1,  0, tx
    0,  1, ty
    0,  0,  1];
