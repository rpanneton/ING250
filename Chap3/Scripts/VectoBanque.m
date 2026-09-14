%% Transaction$ bancaire$
%% Méthode traditionnelle
clear; clc; close all;
load Montant.dat; load Code.dat
Total_depot=0; Total_cheque=0; Total_retrait=0;
for i=1:length(Montant)
   if(Code(i)==104)
      Total_depot=Total_depot+Montant(i);
   elseif(Code(i)==109)
      Total_cheque=Total_cheque+Montant(i);
   elseif(Code(i)==108)
      Total_retrait=Total_retrait+Montant(i);
   end
end
fprintf('Bilan\n');
fprintf('Dépôt :  %8.2f $\n',Total_depot);
fprintf('Chèque : %8.2f $\n',Total_cheque);
fprintf('Retrait :%8.2f $\n',Total_retrait);

%% Vectorisation
clear; clc; close all;
load Montant.dat; load Code.dat
Total_depot=sum(Montant(Code==104));
Total_cheque=sum(Montant(Code==109));
Total_retrait=sum(Montant(Code==108));
fprintf('Bilan\n');
fprintf('Dépôt :  %8.2f $\n',Total_depot);
fprintf('Chèque : %8.2f $\n',Total_cheque);
fprintf('Retrait :%8.2f $\n',Total_retrait);