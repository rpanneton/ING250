% Ex2a
clear; clc
A = [+5 +3 -1];
B = [+3 -2 +1];
PS = A(1)*B(1) + A(2)*B(2) + A(3)*B(3)
NormeA = sqrt(A(1)^2 + A(2)^2 + A(3)^2)
NormeB = sqrt(B(1)^2 + B(2)^2 + B(3)^2)
cos_theta = PS / (NormeA*NormeB)
theta = acosd(cos_theta) % degrés