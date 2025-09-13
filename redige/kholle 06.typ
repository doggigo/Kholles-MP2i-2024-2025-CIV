#import "@local/presets:0.1.0" : doc_aufranc
#import "@local/utils:0.1.0" : *
#import "@preview/mannot:0.2.2": markrect

#show: doc_aufranc.with(title:"Kholle 6",fontsize: 12pt, numbering: none)

= Questions de cours

== L'inégalité triangulaire sur $RR$ et cas d'égalité
#smallcaps[Énoncé]
#context-block[
  Pour tout $(x,y) in RR^2$ : $ |x + y| <= |x| + |y| $
]

#smallcaps[Preuve]
#blocky-paragraph[
  Puisque $|x+y|$ et $|x| + |y|$ sont positifs, par croissance de $x |-> x^2$, on va montrer que $|x+y|^2 <= (|x| + |y|)^2$ ce qui donnera le résultat.

  $|x+y|^2 = (x+y)^2 = x^2 + 2x y + y^2 <= x^2 + 2|x||y| + y^2 = (|x| + |y|)$

  Il y a égalité si, et seulement si : $x y = |x||y|$. C'est-à-dire lorsque $x$ et $y$ sont de même signe.
]

#pagebreak()

== Théorème de la caractérisation séquentielle de la borne supérieure
#smallcaps[Énoncé]
#context-block[
  - $A$ admet $b$ pour borne supérieure si et seulement si $b$ majore $A$ et il existe une suite d'éléments de $A$ qui converge vers $b$.
  - $A$ admet $b$ pour borne inférieure si et seulement si $b$ minore $A$ et il existe une suite d'éléments de $A$ qui converge vers $b$.
]

#smallcaps[Preuve]
#blocky-paragraph[

  *La caractérisation en épsilon n'est pas demandée, mais puisque l'on demande l'équivalence avec la caractérisation en $epsilon$, il est plus sûr de la connaître..*

  _Énoncé de la caractérisation en $epsilon$ :_

  Soit $A$ une partie non-vide de $R$.
  - A admet $b$ pour borne supérieure si : $display(cases(forall a in A\, a <= b, forall epsilon > 0\, exists a in A\, b - epsilon < a <= b)) $
#v(1em)
  - A admet $b$ pour borne supérieure si : $display(cases(forall a in A\, a >= b, forall epsilon > 0\, exists a in A\, b <= a < b + epsilon)) $
#v(1em)

  _Preuve de la caractérisation séquentielle :$$_

  Montrons l'équivalence entre les deux caractérisations pour le cas : $b$ borne supérieure de $A$.

  La condition "b majorant" est presque littéralement dans les deux caractérisations. On va alors simplement prouver l'équivalence entre la seconde condition de chacune des caractérisations :

  $underline(epsilon => "séquentielle :")$ Supposons : $forall epsilon, exists a in A, b-epsilon<a<=b.$ Pour chaque $n in NN$, choisissons $epsilon = 1\/n$, on obtient un élément $a_n in A$ tel que $b-1\/n < a_n <= b$. On a ainsi construit une suite $(a_n)_(n in NN^*)$ d'éléments de $A$ qui converge vers $b$. D'où l'implication.

  #v(.5em)

  $underline("séquentielle" => epsilon :)$ Réciproquement, supposons qu'il existe $(a_n)_(n in NN^*)$, suite d'éléments de $A$ telle que $(a_n)$ converge vers $b$. On a donc : $forall n in NN^*, a_n <= b$. Comme, de plus, $(b - a_n)_(n in NN)$ tend vers 0 : pour tout $epsilon > 0$, il existe $n_0$ tel que $|a_(n_0) - b| < epsilon$, c'est-à-dire : $b - epsilon < a_(n_0) < b + epsilon$, soit finalement : $b - epsilon < a_(n_0) <= b$. D'où la réciproque vérifiée.
  
  _Finalement, on a bien l'équivalence._
]
#pagebreak()

== $QQ$ et $RR without QQ$ sont denses dans $RR$
#smallcaps[Énoncé]
#context-block[
  $QQ$ est dense dans $RR$ se traduit par les deux propositions, qui sont équivalentes :
  - Entre deux réels distincts quelconques, il existe un rationnel.
  - Tout réel est limite d'une suite de rationnels.

  #v(1em)
  $RR without QQ$ est dense dans $RR$ se traduit par les deux propositions, qui sont équivalentes :
  - Entre deux réels distincts quelconques, il existe un nombre irrationnel.
  - Tout réel est limite d'une suite de rationnels.
]

#smallcaps[Preuve]
#blocky-paragraph[
  _$QQ$ dense dans $RR$_ :

  Pour $x in RR$, on a :
  $display((d_n^+) = (floor(10^n x)/10^n))$
  suite de rationnels qui converge bien vers $x$. Donc on a la première assertion.

  Soit $y in RR$ tel que $x < y$. Alors puisque $(d_n^+)$ converge par valeurs strictement supérieures à $x$ en décroissant, pour $n$ assez grand, on a $x < d_n^+ < y$
  #v(.5em)
  _$RR without QQ$ dense dans $RR$_ :

  Pour $x in RR$, $x - sqrt(2)$ est aussi réel, limite d'une suite $(q_n)_(n in NN^*)$ d'après la densité de $QQ "dans" RR$. Ainsi, la suite $(q_n + sqrt(2))_(n in NN^*)$ est une suite d'irrationnels qui converge vers $x$. D'où la deuxième assertion.
  
  Soit $(x,y) in RR^2 "tel que " x < y$, alors on adapte la preuve pour $QQ$ dense dans $RR$ en utilisant $x - sqrt(2) < y - sqrt(2)$.
]

#pagebreak()

== Bornes supérieures et inférieures, max et min de $A = lr({(t^2-1)/(1+t^2) | t in RR})$ (pratique 4 et 5)
#blocky-paragraph[
  $ "Soit" A = {(t^2-1)/(t^2 + 1) | t in RR} $
  
  - #underline("Inf et Min") : pour tout $t in RR, display((t^2 - 1)/(t^2 + 1) > -1 <==> 2t^2 >= 0)$, qui est vrai pour tout $t$. Donc $Inf A = -1$. De plus, pour $t = 0$, on a : $display((0-1)/(0+1) = -1)$. Donc $-1 in A$, c'est-à-dire que $Min A = Inf A = -1$.
  - #underline("Sup et Max") : pour tout $t in RR$, vérifions : 
$ (t^2 - 1)/(t^2 + 1) <= 1 <==> 2t^2 <= 0, "qui est vrai, quelque soit" t $.
  Donc $Sup A <= 1$. Posons maintenant $display((a_n) = ((n^2 - 1)/(n^2 + 1)))$ à valeurs dans $A$. Pour tout $n in NN, a_n = display((1 - 1/n^2)/(1+1/n^2))$. Donc $(a_n)$ converge vers 1.
  D'après la caractérisation séquentielle, $Sup A = 1$. En revanche, $1 in.not A.$ Car l'équation : $display((t^2 - 1)/(t^2 + 1) = 1)$ est équivalente à : $1 = -1$.
  Donc finalement $Sup A = 1$ et $Max A$ n'existe pas.
]

#pagebreak()

= Théorèmes à citer

=== Inégalité de Cauchy-Schwarz
#context-block[
  Soit $(x_i)_(1 <= i <= n)$ et $(y_i)_(1 <= i <= n)$ deux familles de réels.
  Alors :
  $ abs(sum_(i=1)^n x_i y_i) <= sqrt(sum_(i=1)^n x_i^2)sqrt(sum_(i=1)^n y_i^2) $

  (Ps : On peut le voir comme : $display(|scal(x_i,y_i)| <= ||x_i||||y_i||)$ avec $scal(.,.)$ le produit scalaire canonique et $||.||$ la norme euclidienne sur $RR^n$)
]

=== Deuxième inégalité triangulaire

#context-block[
  Soit $(x,y) in RR^2$, alors : $|\|x| - |y|\| <= |x +-y|$
  
  on encore : $|d(x,y) - d(y,z)| <= d(x,z)$
]

=== Propriété fondamentale de $RR$

#context-block[
  - Toute partie de $RR$ non vide et majorée admet une borne supérieure.
  - Toute partie de $RR$ non vide et minorée admet une borne inférieure.
]

=== Théorème-Définition de la partie entière.

#context-block[
  Soit $x in RR$.
  - L'ensemble des entiers relatifs inférieurs ou égaux à $x$ forme une partie de $RR$ non-vide majorée. Son plus grand élément s'appelle "partie entière de $x$" et se note $floor(x) = Max {k in ZZ | k <= x}$
  - $floor(x)$ est l'unique entier relatif tel que : $floor(x) <= x < floor(x) + 1$
]