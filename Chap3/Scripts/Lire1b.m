clear; clc; % Lire1b.m
fprintf('Écrire 3 nombres entre 10 et 30\n');
fprintf('- - - - - - - - - - - - - - - - -\n');
% Bornes exclues
for i = 1:3
   fprintf('V(%.0f)',i);
   V(i)= input(' ? ');
   while((V(i) <=10) || (V(i) >=30))
      fprintf('S.v.p. entre 10 et 30, ');
      fprintf('V(%.0f)',i);
      V(i)= input(' ? ');
   end
end
fprintf('- o - o - o - o - o - o - o - o -\n');
fprintf('V = [%.0f, %.0f, %.0f]\n',V);