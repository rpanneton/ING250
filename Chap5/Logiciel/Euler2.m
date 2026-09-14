% Intégration numérique 
% par la méthode d'Euler et la méthode d'Euler améliorée
clear
f=input('Entrer la valeur de dy/dx: ','s');
X0=input('Entrer la borne inférieure (x_zero): ');
Xa=input('Entrer la borne supérieure (Xa): ');
Y0=input('Entrer la valeur de la fonction en x_zero (y_zero): ');
M=input('Entrer le nombre de sous-intervalles : ');
g=input('Entrer la solution exacte: ','s');

% initialisation des variables
Xn=zeros([1,M+1]);   % Initialisation du vecteur X
Yn=zeros([1,M+1]);   % Initialisation du vecteur Y (Euler simple)
Z= zeros([1,M+1]);   % Initialisation du vecteur Z (Euler améliorée)
Xn(1)=X0;            % Valeur initiale de x
Yn(1)=Y0;            % Valeur initiale de y
h=(Xa-X0)/M;         % initialisation du pas

Z(1) = Y0;
x = X0;
y = Y0;
fz0= eval(f);

% Boucle de détermination des solutions approchées
for i=1:M
   x=Xn(i);
   y=Yn(i);
   fn=eval(f);

   Xn(i+1)=Xn(i)+h;
   Yn(i+1)=Yn(i)+h*fn;	% Euler simple

   y= Z(i) + h*fz0;     % Euler améliorée
   x= Xn(i+1);
   fz1= eval(f);
   Z(i+1) = Z(i) + (h/2)*(fz0 +fz1);
   % On actualise fz0 pour la prochaine itération
   y=Z(i+1);
   fz0=eval(f);
end

Yexact=zeros([1,M+1]);   % Initialisation du vecteur Yexact 
for i=1:M+1
   x=Xn(i);
   Yexact(i)=eval(g);
end

disp(['Au point x = ', num2str(Xn(M+1))])
disp(['et après ',int2str(M),' itérations,'])
disp(['Y vaut ',num2str(Yn(M+1),6), ' (méthode d''Euler)'])
disp(['Y vaut ',num2str(Z(M+1),6), ' (méthode améliorée)'])
disp(['Y vaut ',num2str(Yexact(M+1),6), ' valeur exacte'])
disp(['l erreur (méthode d''Euler) vaut ',num2str(Yexact(M+1)-Yn(M+1),6)])
disp(['l erreur (méthode d''Euler améliorée) vaut ',num2str(Yexact(M+1)-Z(M+1),6)])

disp('N       x              euler       euler amélioré       exact')
for i=1:M+1
   disp([int2str(i),sprintf('\t'), num2str(Xn(i),'%0.5g\t\t'), num2str(Yn(i),'%0.5g\t\t'),num2str(Z(i),'%0.5g\t\t'),num2str(Yexact(i),'%0.5g')])
end 

disp('pause')
pause
plot(Xn,Yn,Xn,Yexact)
xlabel('x')
ylabel('y')
legend('Euler','Exact')
plot(Xn,Yn,Xn,Z,Xn,Yexact)
xlabel('x')
ylabel('y')
legend('Euler','Euler amél.','Exact')