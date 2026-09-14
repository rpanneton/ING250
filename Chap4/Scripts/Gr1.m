clear;clc; format short g %Gr1.m
M=xlsread('Groupe.xls');

disp('Affichage avec fprintf')
[nrang,ncol]=size(M);
for i=1:nrang
   fprintf('%.0f :',M(i,1));
   fprintf('%6.1f',M(i,2:ncol));
   fprintf('\n');
end
disp('Entrée'), pause, home

disp('Résultats sur 100')
for i=1:nrang
   fprintf('%.0f :',M(i,1));
   fprintf('%5.0f',M(i,2:ncol)*10);
   fprintf('\n');
end
disp('Entrée'), pause, home

% Ajout d'une colonne pour la moyenne
for i=1:nrang
   Somme=0;
   for j=2:ncol
      Somme=Somme+M(i,j);
   end
   M(i,ncol+1)=Somme/(ncol-1)*10;
end

disp('Affichage avec la moyenne par rang')
for i=1:nrang
   fprintf('%0.f :',M(i,1));
   fprintf('%6.1f',M(i,2:ncol));
   fprintf('%5.0f',M(i,ncol+1));
   fprintf('\n');
end
disp('Entrée'), pause, home

% Moyenne du groupe sur 100
Somme=0;
for i=1:nrang
   Somme=Somme+M(i,ncol+1);
end
fprintf(...
   'Moyenne du groupe : %.0f sur 100\n',...
   Somme/nrang);

disp('Entrée'), pause, home
disp('Analyse de l''ensemble des résultats')
Faible=0;Moyen=0;Fort=0;
for i=1:nrang
   for j=2:ncol
      if(M(i,j)<6)
         Faible=Faible+1;
      elseif(M(i,j)>8)
         Fort=Fort+1;
      else
         Moyen=Moyen+1;
      end
   end
end
Faible,Moyen,Fort

disp('Entrée'), pause, home
disp('Ceux ayant au moins une note faible')
Au_moins_1_note_faible=0;
for i=1:nrang
   N_est_pas_faible=logical(1);
   j=2;
   while(N_est_pas_faible & j<=ncol)
      if(M(i,j)<6)
         N_est_pas_faible=logical(0);
         Au_moins_1_note_faible=...
            Au_moins_1_note_faible+1;
      end
      j=j+1;
   end
end
Au_moins_1_note_faible