clear
Matrice=xlsread('lennoxville1920');
Tmin=0;
Tmax=0;
minime=0
petit=0
moyen=0
grand=0
for i=1:335;
   if Matrice(i,4)>Tmax;
      Tmax=Matrice(i,4);
   end
   if Matrice(i,4)<Tmin;
      Tmin=Matrice(i,4);
   end
   Ecart=(Matrice(i,4))-(Matrice(i,5));
   plot(i,Ecart);
   xlabel('indice du vecteur');
   ylabel('Écart °C ');
   title('Écartjournalier de température en 1920');
   Legend('Écart','');
   if Ecart<5
      minime(i)=minime(i)+1
   elseif Ecart<10
       petit(i)=petit(i)+1
   elseif Ecart<20
      moyen(i)=moyen(i)+1
   else
     grand(i)=grand(i)+1
   end
end

