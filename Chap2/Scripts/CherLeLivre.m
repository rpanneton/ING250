clear; clc % CherLeLivre.m
FraisDeLivraison = 0;
Achat = input('Prix d''achat ? ');
if(Achat < 50)
   FraisDeLivraison = 20;
end
Achat
FraisDeLivraison
PrixTotal = Achat + FraisDeLivraison