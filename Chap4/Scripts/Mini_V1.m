% Mini_V1.m
clear; clc
V=[32,49,23,17,8,47,35,21,3,16]
% V(1) contient le minimum de V
for i=2:length(V)
   if(V(1)>V(i))
      Tmp=V(1);
      V(1)=V(i);
      V(i)=Tmp;
   end
end
V