% Alliage.m
% Mini-test du 28 oct.
clear;clc
disp('Écrire une donnée ou 0 pour terminer.')
disp(' ')
Conforme=0;
Fautive=0;
Elasticite=input('Limite d''élasticité ? ');
while(Elasticite~=0)
   Ductilite=input('Ductilité en % : ');
   if((Elasticite>=200)&(Ductilite>=19))
      Conforme=Conforme+1;
   else
      Fautive=Fautive+1;
   end
   disp(' ')
   Elasticite=input('Limite d''élasticité ? ');
end
disp(' ')
disp('Analyse des données :')
disp([num2str(Conforme),' sont conformes;'])
disp([num2str(Fautive),' sont fautives.'])