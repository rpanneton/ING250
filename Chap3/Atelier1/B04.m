%% B04
clear
Temps=input('Temps ? ');
while(Temps~=0)
   Somme=Somme+Temps;
   Moyenne=Somme/i;
   Deviation=Temps-Moyenne;
   i=i+1;
end
Moyenne
fprintf('%5.1f %5.1f\n', Temps,Deviation);