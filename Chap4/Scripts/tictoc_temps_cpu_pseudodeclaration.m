%% TICTOC_TEMPS_CPU_PSEUDODECLARATION
% Démonstration de l'importance de la pseudo-déclaration d'un tableau quand
% on le construit dans une(des) boucle(s);

%% Initialisation
clear; clc
N=1e3;   % Si vous utilisez N=1e4... 
         % la première boucle prendra trop de temps.

%% Construction de T sans pseudo-déclaration.
tic  % tic démarre le chrono
for i=1:N
    for j=1:N
        T(i,j)=sqrt(i)+sqrt(j);  % Warning (lire le message !!!!)
    end
end
toc   % toc affichera le temps CPU (central processing unit) de calcul 

%% Construction de T sans pseudo-déclaration.
tic  % tic redémarre le chrono
T2=zeros(N,N);  % Pseudo-déclaration (réserve d'emblée un espace mémoire)
for i=1:N
    for j=1:N
        T2(i,j)=sqrt(i)+sqrt(j);
    end
end
toc  % toc affichera le temps CPU de calcul depuis dernier tic