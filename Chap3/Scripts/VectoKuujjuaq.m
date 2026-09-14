%% Analyse du fichier Kuujjuaq.dat
%%
clear;clc
T = load('Kuujjuaq.dat');
ndata=length(T);

%% Méthode traditionnelle
somme=0;
for i=ndata-9:ndata
   somme=somme+T(i);
end
moyenne=somme/10;
disp(['Moyenne des 10 ',...
   'dernières années : ',...
   num2str(moyenne),'°C.'])
Tgrand=0;
%%
for i=1:ndata
   if(T(i)<moyenne)
      Tgrand=Tgrand+1;
   end
end
disp(['Pendant ',num2str(Tgrand),' des ',...
   num2str(ndata),' ans, la moyenne mensuelle',...
   ' de juillet']);
disp(['a été inférieure à la moyenne des 10 ',...
   'dernières années.']);

%% Vectorisation
MoyenneDes10ans = mean(T(end-9:end));
fprintf(['\nMoyenne des 10 dernières ',...
   'années : %.2f °C.\n\n'],MoyenneDes10ans);
%%
Tinf = sum(T<MoyenneDes10ans);
fprintf(['Pendant %d des %d ans, ',...'
   'la moyenne mensuelle de juillet\n',...
   'a été inférieure à la moyenne',...
   ' des 10 dernières années.\n'],Tgrand,ndata);
