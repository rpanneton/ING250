clear;clc %RefractWN.m
A=load('Refract.dat');
[m,n]=size(A);
fid=fopen('RefractWN.dat','w');
fprintf(fid,' Mvo    Sy    Kc     E  Tmax\n');
for i=1:m
   fprintf(fid,'%4.1f',A(i,1));
   fprintf(fid,' %5.0f',A(i,2:n));
   fprintf(fid,'\n');
end
fclose(fid);