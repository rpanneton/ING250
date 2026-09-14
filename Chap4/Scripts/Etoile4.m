%Fichier etoile4.m
clear
disp('Début de la lecture :');
fid=fopen('Etoile.dat','r');
Ligne = fgetl(fid);
j=0;
while(Ligne ~= -1)
   j=j+1;
   Etoile(j,:) = Ligne(1:6);
   Distance(j) = str2num(Ligne(8:12));
   Magnitude(j) = str2num(Ligne(14:18));   
   Ligne = fgetl(fid);
   fprintf(1,'%d, ',j);
end
fclose(fid);
fprintf(1,'fin.\n\n')

for i=1:j
   fprintf(1,'%s %5.1f %5.2f\n',...
      Etoile(i,:),Distance(i),Magnitude(i));
end
