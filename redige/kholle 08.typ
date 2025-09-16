#import "@local/presets:0.1.0" : doc_aufranc
#import "@local/utils:0.1.0" : *
#import "@preview/mannot:0.2.2": markrect

#show: doc_aufranc.with(title:"Kholle 8",fontsize: 12pt, numbering: none)

= Questions de cours

== Ensemble des points d'affixes $z$ tels que $M(z), M(z^2), M(z^3)$ forment un triangle rectangle en $M(z)$.
#blocky-paragraph[
  En utilisant la condition d'orthogonalité :

La condition est réalisée lorsque :
$ (z^3 - z)/(z^2 - z) = (z(z+1)(z-1))/(z(z-1)) = z +  1 in CC without RR $
L'ensemble des points recherchés est donc la droite verticale passant par $(-1,0)$ privée de ce point.
]

== $A(a)$ et $B(b)$ sont deux points distincts du plan complexe. Ensemble des points $M(z)$ tels que $(z-a)/(z-b)$ soit réel, puis imaginaire.
#blocky-paragraph[
  Rapport réel : le point $B$ est une solution, les autres sont tels que $A,B "et" M$ soient distincts et alignés, c'est donc finalement la droite $(A B)$ privée du point (A).

  Rapport imaginaire pur : le point $B$ est encore solution, les autres sont tels que $arrow(B M)$ et $arrow(A M)$ sont orthogonaux, c'est donc finalement le cercle de diamètre $A B$ privé du point $A$. On peut aussi le retrouver en posant $z = alpha + i beta$ avec $alpha, beta$ réels.
  
  
  // À expliquer un peu mieux..
]

== Théorème de réduction d'une similitude directe

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

== Théorème de réduction d'une similitude
#context-block[
  _La réduction d'une similitude directe est déjà dans la partie questions de cours_

  _Pour la similitude indirecte :_
  
]