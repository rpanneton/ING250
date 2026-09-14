clear;clc %RefractWRN.m
A=load('Refract.dat');
[m,n]=size(A);
fid=fopen('RefractWRN.dat','w');
fprintf(fid,' Mvo    Sy    Kc     E  Tmax\r\n');
for i=1:m
   fprintf(fid,'%4.1f',A(i,1));
   fprintf(fid,' %5.0f',A(i,2:n));
   fprintf(fid,'\r\n');
end
fclose(fid);