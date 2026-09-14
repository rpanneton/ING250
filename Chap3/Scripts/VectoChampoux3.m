%% Filtre électrique de type passe-bas
% Module de la fonction de transfert
% entre la tension d'entrée du filtre
% et la tension de sortie exprimée en dB
% en fonction de la fréquence
%%
clear; clc; close all
R = 10;     % résistance  (Ohm)
C = 0.001;  % capacitance (Farad)
omega = linspace(0,100,300); % fréquence angulaire (rad/s)
numerateur=1;
denominateur=...
   (omega*R*C).^2+1;     % génère un vecteur de
                         % la même taille que omega.
H=numerateur ./  ...
   sqrt(denominateur);   % division élément par élément
                         % H est un vecteur
H_dB=10*log10(H.^2);     % Module de la fonction de
                         % transfert en dB
frequence=omega/(2*pi);  % Pour tracer l'axe en
                         % fréquence Hz (ou s^-1)
                         % au lien de la fréquence
                         % angulaire (rad/s)
plot(frequence,H_dB);
ylabel('Fonction de transfert (dB)');
xlabel('Fréquence (Hz)');
title('Gabarit d''un filtre passe-bas');
grid on;