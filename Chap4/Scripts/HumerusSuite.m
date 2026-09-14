%% Hypothèse d'une symétrie bilatérale 

%% Analyse visuelle
% Avant de poursuivre, la figure est reprise. La
% question est formulée à la fin du texte.
%
% <<..\Humerus.png>>
%
% * Chaque point représente une personne. L'examen
% visuel du graphique révèle qu'une personne ayant
% un humérus gauche long a aussi un humérus droit
% long, et ainsi de suite.
%
% * Les points sont répartis sur une
% droite dont la pente est à 45°, puisque les
% humérus gauche et droit d'un individu ont des
% longueurs similaires.
%
% * Si la symétrie bilatérale était complète, les
% points seraient sur la droite ou également
% répartis de part et d'autres de la droite. Or,
% la majorité des données sont situées en haut de
% la droite, soit D > G.
%
% L'analyse statistique suivante évalue l'hypothèse
% d'une symétrie bilatérale complète.

%% Analyse statistique
% Supposer que les humérus droits de la population
% préhistorique forment une distribution normale
% comme ci-dessous.
%
% <<..\Normale.bmp>>
%
% Posons l'hypothèse d'une symétrie bilatérale
% complète. Dans ce cas, la moyenne arithmétique
% du quotient X de la population est mXp = 1.0.
%
% Ainsi la valeur t de la population (*tp*) est
%
%  tp = (mXp -1)/1 = (1.0 -1)/1 = 0
%
% Par population, on entend tous les individus de
% ce groupe préhistorique, par opposition à
% l'échantillon de 10 personnes.
%
% Dans ce contexte, on pourrait se demander
% qu'elle est la
% probabilité qu'une valeur de X soit égale à la
% moyenne mXe de l'échantillon.
%
% L'écart-type *Sp* de toute la population peut
% être calculé à partir de l'écart-type de
% l'échantillon (considérer ceci comme exact).
%
%  Sp = Se/sqrt(N)
%
% Sur l'axe *t* de la courbe normale,
%
%  tmXe = (mXe -1)/Sp
%
% Plus t = tmXe s'éloigne de tp = 0, moins il y a de
% probabilité que tmXe fasse partie de la
% distribution centrée sur tp, qui suppose une
% symétrie bilatérale complète.
%
% <<..\Normale.bmp>>
%
% * Si tmXe > 1.83, il y a seulement
% 5% de probabilité qu'il fasse partie de la
% distribution centrée à 0. En d'autres termes, il
% ne fait pas partie des données validant
% l'hypothèse d'une symétrie bilatérale complète 19
% fois sur 20.
%
% * De la même façon, tmXe > 2.82 correspond à une
% probabilité de 1%. Il est alors presque certain
% que la symétrie bilatérale n'est pas complète.
%
% * Pour tmXe > 4.30, la probabilité n'est plus
% que de 0.1%, c'est-à-dire une quasi-certitude.
% Puisqu'un échantillon diverge à ce point de t =
% 0, on peut donc affirmer que la symétrie
% bilatérale n'est pas complète 999 fois sur 1000.
%
%% Question
% 
% L'hypothèse d'une symétrie bilatérale complète
% est-elle valable dans la population
% préhistorique d'où provient l'échantillon de 10
% personnes ?
%
% Écrire 5 à 6 lignes *en commentaires*.
% L'explication doit s'afficher correctement en
% texte html contigu avec l'utilitaire _Publish to
% html_.
%
% Appuyer votre réponse par des calculs Matlab.
%
% <<..\Feuilles.gif>>