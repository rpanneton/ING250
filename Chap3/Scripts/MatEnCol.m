% MatEnCol.m
clear; clc
Mat = readmatrix('Refract.xls');
Mvo =  Mat(:,1);
Sy =   Mat(:,2);
Kc =   Mat(:,3);
E =    Mat(:,4);
Tmax = Mat(:,5);
whos