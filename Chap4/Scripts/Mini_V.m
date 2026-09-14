% Mini_V.m
clear; clc
V=[32,49,23,17,8,47,35,21,3,16]
Mini=V(1);
for i=2:length(V)
   if(Mini>V(i))
      Mini=V(i);
   end
end
Mini
% Si plus d'un élément correspond au minimum,
% le premier élément de la liste est retenu.