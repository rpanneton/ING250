%% fonction de transfert
%  H = vitesse/force d'un système dynamique
%%
clear; home; close all
m=2;    % masse (kg)
k=18;   % ressort (N/m)
c=2;    % amortissement (N s/m)
omega = linspace(0,5,300); % fréquence angulaire (rad/s)
numerateur = omega; %vecteur contenant 300 éléments
denominateur = (-omega.*omega*m+k).^2 + (omega*c).^2;
   % denominateur est un vecteur contenant
   % le même nombre d'éléments que le numerateur.
H = numerateur./sqrt(denominateur); 
   % division élément par élément
   % la fonction de transfert H contient le
   % même nombre d'éléments que le vecteur omega.
plot(omega,H);
ylabel('Fonction de transfert H (m / s / N)');
xlabel('Fréquence angulaire \omega (rad/s)');
title('Mobilité dynamique'); grid on;