% Fichier Etoile2.m
clear; clc;
Etoile0 % données
disp('Écriture traditionnelle dans un fichier')
disp('Voir ÉtoileTrad.dat')
n=length(Distance);
fid=fopen('EtoileTrad.dat','w');
% w (write): pour l'écriture.
for i=1:n
   fprintf(fid,'%2.2d %s %5.1f %5.2f\r\n',...
      i,Etoile(i,:),Distance(i),Magnitude(i));
end
fclose(fid);

disp('------------------------------')
disp('     Écriture à l''écran')
disp('------------------------------')
for i=1:n
   fprintf('%2.2d %s %5.1f %5.2f\n',...
      i,Etoile(i,:),Distance(i),Magnitude(i));
end
disp('------------------------------')

disp('Écriture avec un même format dans EtoileNonOk.dat')
fid=fopen('EtoileNonOk.dat','w');
% w (write): pour l'écriture.
for i=1:n
   fprintf(fid,'%2.2d %s %5.1f %5.2f\n',...
      i,Etoile(i,:),Distance(i),Magnitude(i));
end
fclose(fid);

disp('Écriture avec argument wt : EtoileAvecArgWt.dat')
fid=fopen('EtoileAvecArgWt.dat','wt');
% w (write): pour l'écriture.
for i=1:n
   fprintf(fid,'%2.2d %s %5.1f %5.2f\n',...
      i,Etoile(i,:),Distance(i),Magnitude(i));
end
fclose(fid);

