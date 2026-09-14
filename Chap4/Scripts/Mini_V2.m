% Mini_V1.m
clear; home
V =[3 49 32 23 17 47 35 21 8 16]
% V(2) contient le 2e minimum de V
for i=3:length(V)
   if(V(2)>V(i))
      Tmp=V(2);
      V(2)=V(i);
      V(i)=Tmp;
   end
end
V