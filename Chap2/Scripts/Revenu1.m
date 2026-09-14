% Revenu1.m
clear;format compact;format bank
RI=input('Quel est le revenu imposable ? ');
if((RI<0)|RI>=200000)
    disp('La valeur fournie n''est pas acceptée.')
elseif(RI>52000)
    Payer=10790+(RI-52000)*0.25
elseif(RI>=26000)
    Payer=4940+(RI-26000)*0.225
else
    Payer=RI*0.19
end
% On peut remplacer
% disp('texte') par fprintf('texte\n');
format short g % format habituel
