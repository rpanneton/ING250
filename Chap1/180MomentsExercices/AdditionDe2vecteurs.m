% AdditionDe2vecteurs
clear; clc
echo on;
V1 = [12, 0]
V2 = [4, 7]
V = V1 + V2
mV = sqrt(V(1)^2+V(2)^2)
mV1 = sqrt(V1(1)^2+V1(2)^2)
mV2 = sqrt(V2(1)^2+V2(2)^2)
AdditionDesModulesV1etV2 = mV1+mV2
Constater = (mV1+mV2)-mV % est différent de zéro
echo off;