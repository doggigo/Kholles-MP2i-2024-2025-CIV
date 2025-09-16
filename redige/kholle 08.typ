#import "@local/presets:0.1.0" : doc_aufranc
#import "@local/utils:0.1.0" : *
#import "@preview/mannot:0.2.2": markrect

#show: doc_aufranc.with(title:"Kholle 8",fontsize: 12pt, numbering: none)

#set enum(numbering: "1)")

= Questions de cours

== Ensemble des points d'affixes $z$ tels que $M(z), M(z^2), M(z^3)$ forment un triangle rectangle en $M(z)$.
#blocky-paragraph[
  En utilisant la condition d'orthogonalité :

La condition est réalisée lorsque :
$ (z^3 - z)/(z^2 - z) = (z(z+1)(z-1))/(z(z-1)) = z +  1 "est un imaginaire pur" $
L'ensemble des points recherchés est donc la droite verticale passant par $(-1,0)$ privée de ce point.
]

== $A(a)$ et $B(b)$ sont deux points distincts du plan complexe. Ensemble des points $M(z)$ tels que $(z-a)/(z-b)$ soit réel, puis imaginaire.
#blocky-paragraph[
  Rapport réel : le point $B$ est une solution, les autres sont tels que $A,B "et" M$ soient distincts et alignés, c'est donc finalement la droite $(A B)$ privée du point (A).

  Rapport imaginaire pur : le point $B$ est encore solution, les autres sont tels que $arrow(B M)$ et $arrow(A M)$ sont orthogonaux, c'est donc finalement le cercle de diamètre $A B$ privé du point $A$. (On peut aussi le retrouver en posant $z = alpha + i beta$ avec $alpha, beta$ réels.)
  
  
  // Peut-etre montrer comment faire, du coups..
]

== Théorème de réduction d'une similitude directe
#smallcaps[Énoncé]
#context-block[
  Une similitude directe $z |-> a z + b$ est :
  + soit une translation si $a = 1$
  + soit admet un unique point fixe $Omega$ d'affixe $omega = b/(1-a)$, et c'est alors une composée commutative de la rotation de centre $Omega$ et d'angle $arg(a)$ et de l'homothétie de centre $Omega$, de rapport $|a|$
]
#smallcaps[Preuve]
#blocky-paragraph[
  Si $a = 1$, pas de question.

  Sinon :
  Supposons donc $a != 1$. L'équation $z = a z + b$ admet une unique solution, la transformation géométriqque associée transforme donc un unique point en lui-même, on dit que c'est son unique point fixe, d'affixe $omega = b/(1-a)$
  #v(1em)
  On peut alors déduire de : $display(cases(omega = a omega + b, z' = a z + b))$
  #h(1em) 
  
  Que : $(z' - omega) = a(z-omega) <==> z' = |a|e^(i arg(a))(z-omega) + omega$.
  #v(1em)
  C'est donc bien la composée :
  - d'une rotation ($z |-> omega + e^(i theta)(z - omega)$)
  
  - et d'une homothétie ($z |-> omega + lambda(z-omega)$, #h(.3em) $lambda in RR$)
]
Le vecteur $arrow(Omega(omega)M(z))$ est donc transformé en $arrow(Omega(omega)M(z'))$

= Théorèmes à citer
== Théorème pour l'exponentielle complexe
#context-block[
  Soit $a in CC^*$. L'ensemble des solutions de l'équation : $exp(z) = a$ d'inconnue $z$ est :
  ${ln(|a|) + i arg(a) + 2 i k pi | k in ZZ}$
]

== Formules de Moivre et Euler
#context-block[
  Soit $n in NN, theta in RR$

  #serif[*Moivre :*] $ e^(i theta n) = (e^(i theta))^n", ou encore "(cos(theta) + i sin(theta))^n = cos(n theta) + i sin(n theta) $

  #serif[*Euler :*] $ cos(theta) = (e^(i theta) + e^(- i theta))/2, #h(1em) sin(theta) = (e^(i theta)-e^(-i theta))/(2i) $
]

== Théorème de description des racines $n$-ièmes d'un complexe.
#context-block[
  Soit $n in NN^*$ et $z = rho e^(i theta)$ avec $rho > 0$ un complexe non-nul.
  - $0$ admet une unique racine n-ième qui est 0.
  - $z$ possède $n$ racines $n$-ièmes distinctes deux-à-deux : $root(n,rho)exp(i theta/n + (2i k pi)/n)$ pour $k in [|0,n-1|]$
  En particulier : l'ensemble des racines $n$-ièmes de l'unité est : $ UU_n = {e^((2 i k pi)/n) | k in [|0,n-1|]} $
]

== Alignement et Orthogonalité
#context-block[
  _#serif("Alignement :")_

  Soit trois points distincts $A,B$ et $C$ du plan complexe, d'affixes respectives $a,b$ et $c$.

  Ces trois points sont alignés si, et seulement si, $display((c-a)/(b-a))$ est réel.

  _#serif("Orthogonalité :")_

  Soit deux vecteurs $arrow(u)$ et $arrow(v)$ d'affixes respectives $u$ et $v$.

  Ces deux vecteurs sont orthogonaux si, et seulement si, $u overline(v)$ est imaginaire pur.

  En particulier, soit $A(a), B(b) "et" C(c)$ trois points distincts du plan complexe :
  
  Alors $arrow(A B)$ et $arrow(A C)$ sont orthogonaux ssi : $display((c-a)/(b-a))$ est imaginaire pur.
]

== Théorème de réduction d'une similitude
#context-block[
  _La réduction d'une similitude directe est déjà dans la partie questions de cours_
  Une similitude directe $z |-> a z + b$ est :
  + soit une translation et une symétrie axiale sur l'axe des abscisses si $a = 1$
  + soit admet un unique point fixe $Omega$ d'affixe $omega = b/(1-a)$, et c'est alors une composée commutative de la symétrie axiale sur l'axe des abscisses de la rotation de centre $Omega$ et d'angle $arg(a)$ et de l'homothétie de centre $Omega$, de rapport $|a|$
]