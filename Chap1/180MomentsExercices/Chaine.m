clear; clc; % Chaine.m
F = 'La force (N)'; m = 'la masse (kg)';
a = 'l''accélération (m/s²)'; % noter '' --> '
N = 'kg·m/s²'; F1 = 12.4; % N
disp([F,' = ',m,' × ',a]);
fprintf([F,' = ',m,' × ',a,'\n']);
fprintf('F1 est %.1f newtons.\n',F1);
fprintf(['%.1f N = %.1f ',N,'\n'],F1,F1);
clear all
F1=[1,2]; F2=[1,-3]; R=F1+F2;
fprintf('F1= %+.0fi  %+.0fj N\n',F1);
fprintf('F2= %+.0fi  %+.0fj N\n',F2);
fprintf('R = %+.0fi  %+.0fj N\n',R);
fprintf('Composantes scalaires\n');
fprintf('Rx = %.0f N,  ',R(1));
fprintf('Ry = %.0f N\n',R(2));
fprintf('Composantes vectorielles\n');
fprintf('Rx = %.0fi N  et  ',R(1));
fprintf('Ry = %.0fj N\n',R(2));