% Fichier Triang2.m
% Lire a,b,c
% Évaluer s'il peuvent former un triangle.
% Déterminer le type de triangle.
% On ajoute le cas du triangle rectangle
clear
home
a=input('a ? ');
b=input('b ? ');
c=input('c ? ');
C1= (a>0) && (b>0) && (c>0);
C2= (c<a+b) && (b<a+c) && (a<c+b);
if(C1&&C2)
   if((a==b)&&(b==c))
      disp('C''est une triangle équilatéral.');
   elseif((a==b)||(b==c)||(c==a))
      Epsilon = 0.001;    % Rectangle ? % *
      a2=a*a;                           % **   
      b2=b*b;                           % * *
      c2=c*c;                           % *  *
      C_rect=abs(a2-b2-c2)<Epsilon||... % *   *
             abs(b2-c2-a2)<Epsilon||... % *    *
             abs(c2-a2-b2)<Epsilon;     % * * * *
      if(C_rect)
         disp(['C''est un triangle isocèle',...
            ' et rectangle.']);
      else
         disp('C''est un triangle isocèle.');
      end
   else
      Epsilon = 0.001;
      a2=a*a;
      b2=b*b;
      c2=c*c;
      C_rect = abs(a2-b2-c2)<Epsilon ||...
               abs(b2-c2-a2)<Epsilon ||...
               abs(c2-a2-b2)<Epsilon;
      if(C_rect)
         disp('C''est un triangle rectangle.');
      else
         disp('C''est un triangle quelconque.');
      end
   end
else
   disp('Les côtés ne forment pas un triangle');
end
% On peut remplacer
% disp('texte') par fprintf('texte\n');