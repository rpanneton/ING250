%Fichier Etoile3.m
clear
fid=fopen('Etoile.dat','r');
Ligne = fgetl(fid);
fclose(fid);

Nombre_de_caracteres=length(Ligne)
%Arrangement permettant de repérer
% la position des caractères.
Ligne
disp('----+----+----+----+')

%Conversion d'une chaîne en nombre
%  (string to number).
Etoile=Ligne(1:6);
Distance = str2num(Ligne(8:12));
Magnitude = str2num(Ligne(14:18));
fprintf(1,'Étoile : %s\nDistance :%5.1f\nMagnitude :%6.2f\n',...
        Etoile,Distance,Magnitude);
