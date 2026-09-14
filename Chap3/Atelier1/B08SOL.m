%% B08sol
clear
total=0;
t=1;
i=0;
while t~=0
   i=i+1;
   t=input('donnée : ')
   total=total+t;
   t(i)=t; % Il faut modifier le nom t(i)
end
moyenne=total(i-1)
deviation=t-moyenne;
[t,deviation]

% Il est possible que la personne ait déjà programmé
% en Basic.
% Ce langage fait une distinction entre
%      t : un scalaire et
%   t( ) : un vecteur.
% Matlab ne fait pas cette différence.

% Noter que t(dernier i) contient zéro.