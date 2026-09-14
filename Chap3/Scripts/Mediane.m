% Mediane.m
% Illustre le concept d'itération
% La convergence est manuelle.
clear
format compact
format short g
home
load b.dat
n=length(b);  % nombre d'éléments dans b
min_b=min(b); % la plus petite valeur
max_b=max(b); % la plus grande valeur
moyenne=mean(b); % la moyenne
Rep='o';
while(strncmpi(Rep,'o',1)) 
   %compare la réponse à o {oui}
   %ignore majuscule ou minuscule
   %1 seul caractère est utilisé.
   d=input('Devine la médiane : ');
   nsup=0;
   ninf=0;
   for i=1:n
      if(b(i)>d)
         nsup=nsup+1;
      else
         ninf=ninf+1;
      end
   end
   nsup
   ninf
   Rep=input('Nouvel essai {oui, non) ? ','s');
end