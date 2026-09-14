%Bras: programme qui embarque un objet dans un cargo spatial.
close all; clear
load bras.mat
clc
disp('Dessin en cours, un moment s.v.p.')
% moviein(n) crée de la place en mémoire pour conserver n images.
% L'espace est calculé selon les axes actuels.
% Il faut donc créer un tracé avant son utilisation.
figure('Position',[10,235,625,240],'Name','Cargo et satellite');
for i=1:6
	Debut=(i-1)*4+1;
	Fin=i*4;
	clf
	axis([-100,400,-50,150])
	hold on;
	bras_obj(X(Fin),Y(Fin),17,'oui');
	bras_cgo;
	plot(X(Debut:Fin),Y(Debut:Fin),'y-'),
	plot(X(1),Y(1),'mo')
	for j=1:i
		Articulation_2=(j-1)*4+2;
		plot(X(Articulation_2),Y(Articulation_2),'ro')
		plot(X(Articulation_2+1),Y(Articulation_2+1),'go')
		plot(X(Articulation_2+2),Y(Articulation_2+2),'mo')
		if(j~=i)
			bras_obj(X(Articulation_2+2),Y(Articulation_2+2),17,'non')
		end
	end
	hold off;
	if(i==1)
      %Réserve de l'espace mémoire pour 6 images.
		M=moviein(6);
	end
   pause(1) % 1 sec de pause entre chacune des acquisitions
	M(:,i)=getframe;
end
disp('Joue 8 fois « M » aller et retour, 6 images par sec')
movie(M,-8,6);
% Documentation : écrire doc movie