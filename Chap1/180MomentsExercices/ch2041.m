%% Problème 2/41, Meriam p. 45
% <<..\ch2041.gif>>

%% Démarche scalaire
%
% Moment Mc – comme il s'agit d'une corde, le bras
% de levier est toujours égal à 5 po.
clear; clc
d = 5; % po (bras de levier)
T = 32; % lb (Norme de T)
Mc = T * d;
fprintf('Norme de Mc = %.0f lb·po',Mc);
fprintf(' dans le sens antihoraire\n');

%%
% *Calcul de l'angle thêta*
%
% <<..\ch2041a.gif>>
%
% Appliquer le théorème de Varignon au point
% _P_ :
%
% $$ d\;T_x - a\;T_y =0\;\;{\rm avec}\;\;
% T_x = T\cos(\theta)\;\;{\rm et}\;\;
% T_y = T\sin(\theta) $$
%
% $$ d\;T\cos(\theta)-a\;T\sin(\theta)=0 $$
%
% $$ d\cos(\theta)-a\sin(\theta)=0
% \;\;{\rm (Eq.\; 1)} $$
%
% Considérer le triangle jaune :
%
% $$ d = 8 - 5\cos(\theta)\;\;{\rm et}\;\;
% a = 5\sin(\theta) $$
%
% Substituer ce résultat dans l'équation (1) :
%
% $$ (8-5\cos(\theta))\cos(\theta)-
% 5\sin(\theta)\sin(\theta) =0 $$
%
% $$ 8\cos(\theta)
% -5(\cos^2(\theta)+\sin^2(\theta)) =0 $$
%
% $$ 8\cos(\theta)-5 =0 $$
theta = acosd(5/8);
fprintf('Angle theta = %.1f°\n',theta);

%% Aspect physique
% Il n'y a pas de rotation, car le disque est
% immobile.
%
% Le moment *Mc* génère une force de contact *Px*
% au point _P_. Comme le disque ne bouge pas, la
% force *Px* annule le moment *Mc*.
%
% La force *Py* provenant de la masse du disque
% n'entraîne pas un moment au point _C_.
%
% $$ 8P_x=5T {\rm= 160\;lb\cdot po} $$
%
% <<..\ch2041b.gif>>
%
% Comme le disque ne bouge pas (il ne glisse pas
% et ne tourne pas), la force *Px* doit être
% équivalente et de sens contraire à la composante
% en _x_ de *T*, soit *Tx*. Au point _P_ :
%
% $$ \sum M_P=0\;\;{\rm et}\;\; \sum F=0; $$
%
% $$ T_x = P_x = \frac{5}{8}T $$
theta = acosd(5/8);
% thêta = acosd(Tx/T) = acosd( (T*5/8)/T )
fprintf('Angle theta = %.1f°\n',theta);

%%
% Note – le frottement est suffisant au point _P_
% pour maintenir l'équilibre statique du disque.