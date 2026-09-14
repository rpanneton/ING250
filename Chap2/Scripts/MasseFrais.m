clear; clc; close all;
Masse = 1000; % kg
Bm = Masse <= 1200
if(Bm)
   Frais = Masse*0.10
else
   Frais = (Masse-1200)+120
end