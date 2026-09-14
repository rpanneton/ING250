% Fichier VentePlusTaxes.m
clear; format bank
Prix = input('Prix de vente ? ');
TPS = Prix*0.05
TVQ = Prix*9.975/100
PrixTotal = Prix +TPS +TVQ