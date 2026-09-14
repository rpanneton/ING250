%% Opérateurs vectoriels de relation et opérateurs vectoriels logiques
% Matlab contient plusieurs opérateurs de relation
% et d'opérateurs logiques permettant de
% vectoriser les instructions.
%
% La vectorisation consiste à convertir une
% boucle comptée _for_ en une opération
% vectorielle équivalente.
%%
clear; clc;  % Exemple :
A = [2 3 4];
B = [4 3 2];
%% A < B selon la méthode traditionnelle
for i = 1:length(A)
   Apetit(i) = A(i) <  B(i);
end
Apetit
%% A < B selon la version vectorisée
Apetit = A <  B

%% Opérateurs vectoriels de relation
fprintf('vecteur A : %3d %3d %3d \n',A);
fprintf('vecteur B : %3d %3d %3d \n\n',B);

fprintf('    A < B : %3d %3d %3d \n',A<B);
fprintf('    A > B : %3d %3d %3d \n',A>B);
fprintf('   A <= B : %3d %3d %3d \n',A<=B);
fprintf('   A >= B : %3d %3d %3d \n',A>=B);
fprintf('   A == B : %3d %3d %3d \n',A==B);
fprintf('   A ~= B : %3d %3d %3d \n',A~=B);

%% Opérateurs vectoriels logiques
P = [true true false false];
Q = [true false true false];
fprintf('  booléen P : %3d %3d %3d %3d\n',P);
fprintf('  booléen Q : %3d %3d %3d %3d\n\n',Q);

fprintf('     P et Q : %3d %3d %3d %3d P&Q\n',P&Q);
fprintf('     P ou Q : %3d %3d %3d %3d P|Q\n',P|Q);
fprintf('ou exclusif : %3d %3d %3d %3d xor(P,Q)\n',xor(P,Q));
fprintf('      Non P : %3d %3d %3d %3d ~P\n',~P);
fprintf('      Non Q : %3d %3d %3d %3d ~Q\n\n',~Q);

fprintf('au moins 1 vrai, any(P) : %3d\n',any(P));
fprintf('     tous vrais, all(P) : %3d\n',all(P));
%% Information supplémentaire
%  >> help relop
%  >> doc relationaloperators
%  >> doc logicaloperatorselementwise
%  >> doc precedence
% -----------
%  >> doc not
%  >> doc and
%  >> doc or
%  >> doc xor
%  >> doc any
%  >> doc all
% 
% <html> <hr> </html>