%% Décision binaire – règles de conception
%
% <<..\RegleDeConception.gif>>
%
% L’énoncé de décision est perçu comme une
% seule séquence comportant une entrée
% et une sortie. Ce formalisme d'écriture
% respecte le concept de la programmation
% structurée, une recette éprouvée pour l'écriture
% efficace de programmes.


%% Variations
% Rappel – Dans chacun des problèmes en statique
% sur les moments, il faut identifier le sens
% (horaire ou antihoraire) du moment.
Moment = [0 0 -4]; % composantes selon x, y et z
ComposantePositiveEnZ = Moment(3)>0;
if(ComposantePositiveEnZ)
   fprintf('® Le moment est antihoraire.\n');
else
   fprintf('® Le moment est horaire.\n');
end

%%
% *Inclure la proposition logique dans le if*
%
% La proposition logique peut être incluse dans le
% if, mais il y a une perte sémantique qu'il faut
% compenser par l'ajout d'une remarque. Conserver
% la sémantique dans les instructions Matlab.

fprintf('Version sans booléen\n');
if(Moment(3)>0) % Composante en Z du moment
   fprintf('® Le moment est antihoraire.\n');
else
   fprintf('® Le moment est horaire.\n');
end
fprintf('Choisir la version avec booléen.\n');

%%
% *La branche “ coté faux ” est absente.*
%
% La branche Sinon (else) peut être absente.

fprintf('Version sans branche “ else ”\n');
fprintf('—— Le booléen est faux.\n');
Moment = [0 0 -4]; % composantes selon x, y et z
ComposantePositiveEnZ = Moment(3)>0;
fprintf('® Le moment est ');
if(ComposantePositiveEnZ)
   fprintf('anti');
end
fprintf('horaire.\n');

%%
fprintf('Version sans branche “ else ”\n');
fprintf('—— Le booléen est vrai.\n');
Moment = [0 0 5]; % composantes selon x, y et z
ComposantePositiveEnZ = Moment(3)>0;
fprintf('® Le moment est ');
if(ComposantePositiveEnZ)
   fprintf('anti');
end
fprintf('horaire.\n');

%%
% *La branche “ côté vrai ” ne doit pas être absente.*

Moment = [0 0 5]; % composantes selon x, y et z
ComposanteNegativeEnZ = Moment(3)<0;
fprintf('® Le moment est ');
if(ComposanteNegativeEnZ)
else
   fprintf('anti');
end
fprintf('horaire.\n');

%%
% Cette structure suppose qu'il manque
% une séquence dans la branche du “ côté
% vrai ”. C'est donc une structure *à éviter*.
%
% <<..\Crayon.gif>>

%% Règles d'écriture
% Le début de l'instruction de décision débute
% par le mot “if”, elle comporte un “else” et elle
% se termine par un “end”.
%
% Les autres instructions incluses entre les
% mots “if”, “else” et “end” sont des séquences, et
% elles ne font pas partie de la syntaxe de la
% décision.
%
% La branche “else” est optionnelle. Seuls
% les mots “if” et “end” sont obligatoires et ils
% indiquent le début et la fin de l'énoncé de
% décision.
%
% Ne pas écrire d'instruction sur la même ligne
% que le “else”. C'est une source d'erreur et une
% conduite *à éviter !*
%
% Les instructions constituant une décision sont
% écrites comme un seul bloc : pas de lignes
% vides. Toutes ces lignes forment une séquence
% cohérente, comme un paragraphe contenant une
% seule idée. L'espace écran est suffisamment
% limité sans ajouter de vides inutiles.
%
% Les instructions entre “if-else-end” sont
% décalées de trois espaces afin de faciliter la
% lecture. C'est un véritable code de conduite.
% L'éditeur de Matlab automatise cette technique
% d'écriture. Que dire de plus ?