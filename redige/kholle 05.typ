#import "@local/presets:0.1.0" : doc_aufranc
#import "@local/utils:0.1.0" : *
#import "@preview/mannot:0.2.2": markrect

#show: doc_aufranc.with(title:"Kholle 5",fontsize: 12pt, numbering: none)

= Questions de cours

== Complémentaire d'une intersection, d'une réunion, double complémentaire
#smallcaps[Complémentaire]

*Énoncé*
#context-block[
  Soit $A_i$ des parties d'un ensemble $E$, pour $i$ parcourant un ensemble $I$, et $B$ un ensemble.
  alors : $ 
  complement_E (bigunion_(i in I)A_i) = biginter_(i in I)complement_E A_i \
  complement_E (biginter_(i in I)A_i) = bigunion_(i in I)complement_E A_i
  $
]

*Démonstration :* (avec des arguments ensemblistes)
#blocky-paragraph[
  _Pour le complémentaire d'une union :_

  Dire que $x$ n'appartient pas à $display(bigunion_(i in I)A_i)$, c'est dire que $x$ n'appartient à aucun des $A$. Donc il appartient au complémentaire de tous les $A_i$. C'est à dire que $x$ appartient à $display(biginter_(i in I) complement_E A_i)$, et réciproquement.

  _Pour le complémentaire d'une intersection :_
  
  Dire que $x$ n'appartient pas à $display(biginter_(i in I)A_i)$, c'est dire que $x$ n'appartient pas à au moins un $A_i$. Donc il appartient à son complémentaire. Ainsi, $x$ appartient à $display(bigunion_(i in I)complement_E A_i)$ et réciproquement.
]

#smallcaps[Double complémentarité]

*Énoncé*
#context-block[
  Soit $E$ un ensemble et $B subset E$. Alors $complement_E (complement_E B) = B$
]
*Démonstration*

Dire que $x$ appartient à $B$, c'est dire qu'il n'appartient pas au complémentaire de $B$. C'est-à-dire que $x in complement_E (complement_E B)$ et réciproquement.
#pagebreak()

== Injectivité et composition
#smallcaps[Définition]
#context-block[
  soit $f: E-> F$
  f est #serif[*injective*] si tout élément de $F$ a au plus un antécédent dans $E$ par f.

  Ainsi, pour tout $y in F$, l'équation $y = f(x)$ d'inconnu $x$ a au plus une solution dans $E$.
]
#smallcaps[Composition]
#blocky-paragraph[
_La composée de deux injections est injective_

Soit $f : E->F$ et $g: F -> G$ injectives.
Soit $z in G$, et supposons $x_1, x_2$ tels que $z = (g compose f)(x_1) = (g compose f)(x_2)$. Par injectivité de $g$, on obtient $f(x_1) = f(x_2)$ et par injectivité de $f$, on obtient $x_1= x_2$. 

Donc $g compose f$ est injective.

#v(1em)

_Inversement, si $g compose f$ est injective, alors $f$ est injective_

Supposons $g compose f$ injective, et soit $y in F$ tel qu'il existe $x_1$ et $x_2$ dans $E$ tels que : 

$y = f(x_1) = f(x_2)$.
On en déduit que : $g(y) = (g compose f)(x_1) = (g compose f)(x_2)$. Par injectivité de $g compose f$, $x_1 = x_2$.

Donc $f$ est injective.
]

== Surjectivité et composition
#smallcaps[Définition]
#context-block[
  soit $f: E-> F$
  f est #serif[*surjective*] si tout élément de $F$ a au moins un antécédent dans $E$ par $f$.

  Ainsi, pour tout $y in F$, l'équation $y = f(x)$ d'inconnue $x$ a au moins une solution dans $E$.
]
#smallcaps[Composition]
#blocky-paragraph[
_La composée de deux surjections est une surjection_

Supposons $f : E -> F$ et $g : F -> G$ surjectives.

Alors $f(E) = F$ donc $g(f(E)) = g(F) = G$.
Donc $g compose f$ est surjective.

#v(1em)

_Inversement, si $g compose f$ est surjective, alors g est surjective._

Supposons $g compose f$ surjective (avec le même cadre que la démo d'avant)

Alors $f(E) subset F$ donc $g(f(E)) = G subset g(F) subset G$

On en déduit que $g(F) = G$. Donc que $g$ est surjective.
]
#pagebreak()

== Définitions : majorant, minorant, borne supérieure, borne inférieure, maximum, minimum d'une partie
#smallcaps[Théorème Définition]
#context-block[
  Soit $F$ une partie d'un ensemble ordonné $(E, <=)$.
  - $F$ est #serif[*majorée*] s'il existe $a$ dans $E$ tel que : $forall x in F, x <= a$
  - $F$ est #serif[*minorée*] s'il existe $a$ dans $E$ tel que : $forall x in F, x >= a$
  - $F$ est #serif[*bornée*] si $F$ est majorée et minorée
  - $F$ admet un #serif[*maximum*] s'il existe un majorant de $F$ qui appartient à $F$. 
Il est alors unique, noté $max F$. 
  - $F$ admet un #serif[*minimum*] s'il existe un minorant de $F$ qui appartient à $F$. 
Il est alors unique, noté $min F$.
  - F admet une #serif[*borne supérieure*] si l'ensemble de ses majorants admet un plus petit élément de $F$, noté $sup F$. Si $max F$ existe, alors $max F = sup F$
  - F admet une #serif[*borne inférieure*] si l'ensemble de ses minorants admet un plus grand élément de $F$, noté $inf F$. Si $min F$ existe, alors $min F = inf F$
]
#pagebreak()

= Théorèmes à citer
=== Injection, Surjection
#context-block[Voir questions de cours]
=== Bijection
#context-block[
  - #underline[#serif[Caractérisation :]] une application est #serif[*bijective*] si elle est injective et surjective. Ainsi, soit $f : E -> F$ bijective, pour tout $y in F$, il existe $x in E$ tel que $f(x) = y$
  - la composée de deux bijections est une bijection
  - la composée de deux bijections est une bijection. Dans ce cas : $(g compose f)^(-1) = f^(-1) compose g^(-1)$
  - Si $g compose f$ est bijective, alors $f$ est bijective et $g$ est surjective.
  - Soit $f : E->F, g:F -> E$. Alors si $g compose f = Id_E$ $f compose g = Id_F$ alors $f$ et $g$ sont bijectives, $f^(-1) = g$ et $g^(-1) = f$. On retrouve aussi que si $f$ est bijective, alors $f^(-1)$ l'est aussi.
]

=== Théorème des classes d'équivalence
#context-block[
  #set enum(numbering: "a)")
  Soit $cal(R)$ une relation d'équivalence sur $E$.
  L'ensemble des classes d'équivalence modulo $cal(R)$ forme une partition de $E$ :
  + aucune classe d'équivalence n'est vide
  + deux classes d'équivalence sont disjointes ou égales
  + leur réunion est égale à $E$.
  Ainsi, chaque élément $x$ d'une classe d'équivalence $C$ en est un représentant : $C = Cl(x)$
]