clear; clc
disp('    Table de vérité*');
La = [false; false; true; true];
Lb = [false; true; false; true];
Lc = La&Lb;
Ld = [La,Lb,Lc];
disp(['    La    Lb   La&Lb'])
disp(Ld); whos
% (*) Propriété d'une variable logique d'être
% vraie ou fausse. - Le petit Robert