function y = objet(Xo,Yo,Rayon,Couleur)
Theta=linspace(-pi,pi,30);
%Équation d'un cercle
Xc=Rayon*cos(Theta);
Yc=Rayon*sin(Theta);
Xc=Xc+Xo;
Yc=Yc+Yo;
if(Couleur=='oui')
	patch(Xc,Yc,'cyan');
else
	plot(Xc,Yc,'c:');
end
