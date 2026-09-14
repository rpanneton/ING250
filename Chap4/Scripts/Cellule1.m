clear;clc
% Comparaison entre une structure de données
% et un tableau de cellules
materiau(1).Nom='Nylon';
matiere{1,1}='Nylon';
% Noter que les champs permettent d'identifier
% beaucoup plus facilement un élément particulier.
% 1- Nom, 2- Composition, 3- Prix, 4- Rigdite, etc.
materiau(1).Composition='(NH(CH2)5-CO)n';
matiere{1,2}='(NH(CH2)5-CO)n';
materiau(1).Masse_volumique=1.13; %g/cm^3 ou Mg/m^3
matiere{1,3}=1.13;
materiau(1).Prix=4.50;% CAD/kg
matiere{1,4}=4.50;
materiau(1).Rigidite=2900; %MPa
matiere{1,5}=2900;
materiau(1).Limite_elastique=72; %MPa
matiere{1,6}=72;
materiau(1).Resistance=127; %MPa
matiere{1,7}=127;
materiau(1).Ductilite=0.7; %mm/mm
matiere{1,8}=0.7;
materiau(1).Tenacite=3.91; %MPa.m^1/2
matiere{1,9}=3.91;
materiau(1).Electrique='Bon isolant';
matiere{1,10}='Bon isolant';
materiau(1).Optique='Translucide';
matiere{1,11}='Translucide';
materiau(1).Exemple='Nylon.gif';
matiere{1,12}='Nylon.gif';

materiau(2).Nom='Teflon';
matiere{2,1}='Teflon';
materiau(2).Composition='(CF2-CF2)n';
matiere{2,2}='(CF2-CF2)n';
materiau(2).Masse_volumique=2.17; %g/cm^3 ou Mg/m^3materiau(2).Rigidite=2900; %MPa
matiere{2,3}=2.17;
materiau(2).Prix=24;% CAD/kg
matiere{2,4}=24;
materiau(2).Rigidite=470; %MPa
matiere{2,5}=470;
materiau(2).Limite_elastique=20; %MPa
matiere{2,6}=20;
materiau(2).Resistance=25; %MPa
matiere{2,7}=25;
materiau(2).Ductilite=3; %mm/mm
matiere{2,8}=3;
materiau(2).Tenacite=1.6; %MPa.m^1/2
matiere{2,9}=1.6;
materiau(2).Electrique='Bon isolant';
matiere{2,10}='Bon isolant';
materiau(2).Optique='Opaque';
matiere{2,11}='Opaque';
materiau(2).Exemple='Teflon.gif';
matiere{2,12}='Teflon.gif';

materiau(3).Nom='Acrylique';
matiere{3,1}='Acrylique';
materiau(3).Composition='(CH3-CH2-C-CO-O-CH3)n';
matiere{3,2}='(CH3-CH2-C-CO-O-CH3)n';
materiau(3).Masse_volumique=1.19; %g/cm^3 ou Mg/m^3materiau(3).Rigidite=2900; %MPa
matiere{3,3}=1.19;
materiau(3).Prix=3.1;% CAD/kg
matiere{3,4}=3.1;
materiau(3).Rigidite=3000; %MPa
matiere{3,5}=3000;
materiau(3).Limite_elastique=63; %MPa
matiere{3,6}=63;
materiau(3).Resistance=64; %MPa
matiere{3,7}=64;
materiau(3).Ductilite=0.06; %mm/mm
matiere{3,8}=0.06;
materiau(3).Tenacite=1.2; %MPa.m^1/2
matiere{3,9}=1.2;
materiau(3).Electrique='Bon isolant';
matiere{3,10}='Bon isolant';
materiau(3).Optique='Transparent';
matiere{3,11}='Transparent';
materiau(3).Exemple='PMMA.gif';
matiere{3,12}='PMMA.gif';

materiau(4).Nom='Acier doux';
matiere{4,1}='Acier doux';
materiau(4).Composition='Fe/0.02-0.3% C';
matiere{4,2}='Fe/0.02-0.3% C';
materiau(4).Masse_volumique=7.87; %g/cm^3 ou Mg/m^3materiau(4).Rigidite=2900; %MPa
matiere{4,3}=7.87;
materiau(4).Prix=0.80;% CAD/kg
matiere{4,4}=0.80;
materiau(4).Rigidite=208000; %MPa
matiere{4,5}=208000;
materiau(4).Limite_elastique=325; %MPa
matiere{4,6}=325;
materiau(4).Resistance=460; %MPa
matiere{4,7}=460;
materiau(4).Ductilite=0.36; %mm/mm
matiere{4,8}=0.36;
materiau(4).Tenacite=61; %MPa.m^1/2
matiere{4,9}=61;
materiau(4).Electrique='Bon conducteur';
matiere{4,10}='Bon conducteur';
materiau(4).Optique='Opaque';
matiere{4,11}='Opaque';
materiau(4).Exemple='Acier.gif';
matiere{4,12}='Acier.gif';

whos
fprintf(' Ténacité :')
for i=1:length(materiau)
   fprintf('%5.1f ',materiau(i).Tenacite');
end
fprintf('\nDuctilité :')
for i=1:4
   fprintf('%5.1f ',matiere{i,8});
end
fprintf('\n- - - Fin - - -');