%% Exercice 4 du chapitre 2

%% Calcul du salaire brut
clear; ; format compact;
NbHr=input('Nombre d''heures de travail: ');
TxHr=input('Taux horaire du salaire : ');
if NbHr>40; 
    Salaire_Brut = ( 40 + (NbHr-40)*1.5 ) * TxHr; 
else
    Salaire_Brut = NbHr*TxHr;
end
fprintf('\nLe salaire brut est de %8.2f $\n',Salaire_Brut)

%% Calcul du salaire net après impôt
if NbHr<32
    Impot = 0.52*NbHr*TxHr;
elseif NbHr<=40
    Impot = ( 0.52*31 + 0.83*(NbHr-31) ) * TxHr;
else
    Impot = ( 0.52*31 + 0.83*(40-31) + 0.83*(NbHr-40) ) * TxHr;
end
Salaire_Net = Salaire_Brut - Impot;
fprintf(' Le salaire net est de %8.2f $\n',Salaire_Net)
