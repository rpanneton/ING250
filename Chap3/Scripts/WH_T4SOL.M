%Wh_t4sol.m
clear
home
nombre=input('Écrire un premier nombre : ');
%ON suppose que l'on ne va pas écrire zéro
LePlusGrand=nombre;
LePlusPetit=nombre;
while(nombre~=0)
   if(LePlusPetit>nombre)
      LePlusPetit=nombre;
   elseif(LePlusGrand<nombre)
      LePlusGrand=nombre;
   end
   nombre=input('Écrire un autre nombre : ');
end
LePlusPetit
LePlusGrand