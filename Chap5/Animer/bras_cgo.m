function y=bras_cgo
%Dessine le cargo spatial
Rayon_int=28;
Rayon_ext=42;
Rayon_bord=(Rayon_ext-Rayon_int)/2;
Theta=linspace(-pi,0,30);
Xb=Rayon_int*cos(Theta);
Yb=Rayon_int*sin(Theta);
Xb=[Xb,(Rayon_int+Rayon_bord+Rayon_bord*cos(Theta))];
Yb=[Yb,(-Rayon_bord*sin(Theta))];
Theta=fliplr(Theta);
Xb=[Xb,Rayon_ext*cos(Theta)];
Yb=[Yb,Rayon_ext*sin(Theta)];
Theta=fliplr(Theta);
Xb=[Xb,(-Rayon_ext+Rayon_bord+Rayon_bord*cos(Theta))];
Yb=[Yb,(-Rayon_bord*sin(Theta))];
%On place le zéro
Xb=Xb+Rayon_ext-Rayon_bord;
Yb=Yb+0;
fill(Xb,Yb,'green')