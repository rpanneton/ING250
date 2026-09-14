% Binaire2 : conversion binaire
% d'un réel 0<R<1 dans un n_bits
clear; clc; R = 0.1
R_initial = R;n_bits=8 % 52 max
for i=1:n_bits
   b(i)= floor(R/2^-i);
   R= R-b(i)*2^-i;
end
disp(['Binaire : 0 . ',...
   num2str(b,'%2d')])
somme = 0;
for i=1:n_bits
   disp([num2str(b(i)),' * 2^',...
      num2str(-i),' = ',...
      num2str(b(i)*2^-i)])
   somme=somme+b(i)*2^-i;
end
somme
Difference=R_initial-somme
