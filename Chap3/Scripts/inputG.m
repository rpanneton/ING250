function Nombre = inputG(invite)
% Simule input et Génère un
% nombre entre 200 et 350,
% et le nombre zéro.
Nombre = rand; % génère une valeur
                % entre 0 et 1.
if(Nombre<0.05) % 5 pour cent
   Nombre = 0;
else
   Nombre = 200 + round(Nombre*150);
end
disp([invite,num2str(Nombre)]);
end