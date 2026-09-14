function Nombre = inputG(invite)
% Simule input et Génère un
% nombre entre 200 et 350,
% et le nombre zéro.
persistent n;
Nombre = rand;
% génère une valeur entre 0 et 1.

Nombre = 200 + round(Nombre*150);
% Ajuste ce nombre entre 200 et 350.

if(isempty(n) && Nombre>250)
   n = 1; % initialisation
   % compte le nombre de fois que la fonction a
   % produit un nombre compris entre 250 et 350.
elseif(Nombre>250)
   n = n + 1;
end

if(n>7)
   Nombre = 0;
   % force le nombre 0 après avoir fourni 7
   % nombres valides.
end
disp([invite,num2str(Nombre)]);
% simule l'invite de input
end