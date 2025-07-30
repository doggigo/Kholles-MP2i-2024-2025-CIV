#import "@local/presets:0.1.0" : doc_aufranc
#import "@local/utils:0.1.0" : *

#show: doc_aufranc.with(title: "Kholle, Semaine 29", fontsize: 12pt,numbering: none)
#set enum(numbering: "(1)")

== Inégalités de Schwarz & Minkowski

#point(3)

==== Schwarz
#smallcaps[Énoncé]

#context-block[
  $forall(x,y) in E^2 |scal(x,y)| <= ||x||.||y|| $

  avec égalité si, et seulement si, $(x, y)$ est lié
]

#smallcaps[Preuve]

#blocky-paragraph[
On a : 
$forall (x,y,lambda) in E^2 times RR, scal(lambda x + y,lambda x + y)= ||lambda x + y||^2 >= 0$

On développe par bilinéarité et symétrie :

$scal(lambda x + y, lambda x + y) = lambda^2 ||x||^2 + 2 lambda scal(x,y) + ||y||^2 > 0$.
Si $x = 0$, vérifié avec égalité. 

Si $x eq.not 0 :$
On a un trinôme du second degré en $lambda$ à signe fixe.
Donc $Delta<= 0$.
Ainsi : $4scal(x,y)^2 - 4||x||^2.||y||^2 <= 0 <=> (x|y)^2 <= ||x||^2.||y||^2$

D'où le résultat pour le cas $(x,y)$ libre

\

#underline[Cas d'égalité]

$underline(=>)$ : Si $Delta = 0$, on a une racine double $lambda_0$, donc $||lambda_0 x + y|| = 0 => lambda_0 x + y = 0 <=> y = -lambda_0 x$ d'où $(x,y)$ liée.


$underline(arrow.l.double)$ : Supposons $(x,y)$ liée.
- Soit $x = 0$ et $scal(x,y) = 0 = ||x||^2.||y||^2$, vérifié.
- Soit il existe $lambda_0 >= 0$ tel que $y = lambda_0 x$, dans ce cas on a $|scal(x,y)| = |lambda_0|.||y||^2 = ||x||.||y||$ 
]

==== Minkowski
#smallcaps[Énoncé]
#context-block[
  $forall (x,y) in E^2, ||x + y|| <= ||x|| + ||y||$

  avec inégalité si, et seulement si, $x = 0$ ou $y = lambda x$ pour un $lambda >= 0$ 
]
#smallcaps[Preuve]

#blocky-paragraph[
  Soit $(x,y) in E^2 ||x + y||^2 = ||x||^2 + 2scal(x,y) + ||y||^2$

  Inégalité de Schwarz : $||x + y||^2 <= ||x||^2 + 2||x||.||y|| + ||y||^2 = (||x|| + ||y||)^2$.

  D'où le résultat, puisque les normes sont toujours positives.

  Cela nous donne l'égalité si, et seulement si, $scal(x,y) = ||x||.||y||$

  $underline(=>)$: C'est un cas particulier de l'égalité dans Schwarz, donc $(x,y)$ lié.
  - Si $x = 0$, on a bien $scal(0,y) = ||0||.||y|| = 0$
  - Sinon, il existe $lambda_0$ tel que $y = lambda_0 x$, alors on a : $lambda_0(x | x) = lambda_0 ||x||^2 = ||lambda_0||.||x||.||x||, "donc" lambda_0 >= 0$
  $underline(arrow.l.double)$: Si $y = lambda_0 x$ avec $lambda_0 >= 0,$ on obtient bien $scal(x,y) = ||x||.||y||$ donc égalité.
]


#pagebreak()
== Formule de restitution et identité du Parallélogramme
#point(4)

#smallcaps[Énoncé]
#context-block[
  Pour tout $(x,y) in E^2$ :

  *Formule de Restitution :*
  $ scal(x,y) = 1/2 (||x+y||^2 - ||x||^2 - ||y||^2) $
  #linebreak()
  *Identité du Parallélogramme :*
  $||x+y||^2 + ||x-y||^2 = 2(||x||^2+||y||^2)$
]
#smallcaps[Preuve]
#blocky-paragraph[
  $||x+y||^2 = scal(x+y,x+y) = ||x||^2 + 2scal(x,y) + ||y||^2$ par symétrie du produit scalaire
  $ <=> scal(x,y) = 1/2(||x+y||^2 - ||x||^2 - ||y||^2) $
  D'où la formule de restitution.
  En changeant $y$ en $-y$, on a :
  $ cases(
    ||x-y||^2 = ||x||^2 - 2scal(x,y) + ||y||^2,
    ||x+y||^2 = ||x||^2 + 2scal(x,y) + ||y||^2,
    ) $
  En sommant, on obtient donc :
  $ ||x+y||^2 + ||x-y||^2 = 2(||x||^2 + ||y||^2) $
  D'où l'identité du parallélogramme.
]

#pagebreak()
== Description du procédé de Schimdt
#point(12)

#context-block[
  #smallcaps[Théorème] :
  
  Soit $(u_i)_(i in [|1,n|])$ une famille libre et $F = Vect(u_1, dots, u_n)$
  Il existe une base orthonormée $(e_1, ..., e_n)$ de $F$ telle que :
  $ forall j in [|1,n|], thick Vect(u_1, dots, u_j) = Vect(e_1,dots, e_j) $
  Il y a unicité de cette base si l'on impose que pour tout $i in [|1,n|]$, $scal(e_i,u_i) > 0$
  - En particulier, tout espace Euclidien possède des bases orthonormées, et le drapeau est conservé (Pour tout $i$, $Vect(e_1, dots, e_i) = Vect(u_1, dots, u_j)$).
  #linebreak()
  #smallcaps[Procédé] :
  #blocky-paragraph[
  Le vecteur $e_j$ s'obtient en soustrayant à $u_j$ le vecteur $display(sum_(k=1)^(j-1)scal(e_k,u_j)e_k)$
  
  (on remarquera q'il s'agit du projeté orthogonal de $u_j$ sur $F_(j-1) = Vect(e_1,..., e_(j-1))$)
  
  Il n'y a plus qu'à l'orthonormaliser.

  Ainsi, on a :
  $ v_j = u_j - sum_(k=1)^(j-1)scal(e_k, u_j)e_k "puis :" e_j = 1/(||v_j||)v_j \ $
  ]
]

#pagebreak()
== Distance à un sous-espace vectoriel de dimension finie
#point(17)

#smallcaps[Énoncé]
#context-block[
  Soit $F$ un sev de dimension finie de $E$ et $x in E$.

  La distance de $x$ à $F$, notée $d(x,F) = display(Inf_(y in F) ||x-y||)$, est bien définie.

  \

  De plus, il existe un unique $y_0$ de $F$ tel que:
  
  $d(x,F) = ||x-y_0||$, et $y_0 = p_F (x)$ est le projeté orthogonal de $x$ sur $F$.

  \
  Enfin : $d(x,F)^2 = ||x-p_F (x)||^2 = ||x||^2 - ||p_F (x)||^2$
]

#smallcaps[Preuve]

#blocky-paragraph[
  L'ensemble ${||x-y|| thick | thick y in F }$ forme une partie non-vide de $RR$ et admet donc bien une borne inf, ce qui asssure l'existence de $d(x,F)$

  Pour tout y, on a :

  $ ||x-y||^2 = ||(x-p_F (x)) + (p_F (x) - y)||^2 $
  On a : $x-p_F (x) in Ker p_F$ et $p_F (x)-y in fIm p_F$. Donc d'après le théorème de Pythagore :
  $ ||x-y||^2 = ||x - p_F (x)||^2 + ||p_F (x) - y||^2 $
  On en déduit $||x-y|| >= ||x-p_F (x)||$ avec égalité ssi $y = p_F (x)$

  Donc finalement on a bien $d(x,F) = display(Inf_(y in F) ||x - y||) = ||x - p_F (x)||^2$

  De même, avec Pythagore : 
  $
  ||x||^2 = ||x - p_F (x) + p_F(x)||^2 = ||x^2-p_F (x)||^2 + ||p_F (x)||^2 \
  <=> ||x-p_F (x)||^2 = ||x||^2 - ||p_F (x)||^2
  $
  D'où la seconde égalité.
]

#pagebreak()

== Distance d'un espace Euclidien à un hyperplan vectoriel ou affine donné par une équation cartésienne
#point(22)/#point(25)

#smallcaps[Énoncé]
#context-block[
Soit $E$ un espace euclidien de dimension $n$, de base $(e) = (e_1, dots, e_n)$, 

$cal(H) = A + H$ avec 
$H$ un hyperplan d'équation $display(sum_(i=1)^n u_i x_i) = 0$
et $A in E$

Alors :

Soit $M in cal(H)$ si $u = display(sum_(i=1)^n)u_i e_i$ est un vecteur unitaire orthogonal à $H$, alors :

$ d(M,cal(H)) = abs(scal(arrow(A M),u)) = display(abs(sum_(i=1)^n u_i (x_i - a_i)))$

La distance à $H$ est simplement obtenue pour $A$ = $0_E$
]


#smallcaps[Preuve]
#blocky-paragraph[
  Par analogie avec la distance d'un point à un sous-espace vectoriel :

  $ d(M.A+H) &= Inf_(h in H) ||M - (A+H)|| = Inf_(h in H) ||(M-A) - h|| = Inf_(h in H) ||arrow(A M) - h|| \
  &= ||arrow(A M) - p_H (arrow(A M))|| = ||p_(H^perp)(arrow(A M))|| = abs(scal(arrow(A M),u)) $
  (car $u$ est de norme $1$)

  D'où la formule annoncée pour un hyperplan vectoriel, en remplaçant $A$ par $O$.
]

#pagebreak()
== Théorèmes à énoncer
=== Théorèmes de Pythagore
#context-block[
  #smallcaps[Première version]

  + $||x+y||^2 = ||x||^2 + ||y||^2$ si, et seulement si, $scal(x,y) = 0$
  + Si $(x_i)_(1<=i<=n)$ est un système orthogonal, $display(||sum_(i=1)^n x_i||^2 = sum_(i=1)^n ||x_i||^2)$ (Le sens n'est pas réciproque)

  #smallcaps[Deuxième version]

  Soit $x in display(bigoperp_(i=1)^n F_i)$ s'écrivant $x = display(sum_(i=1)^n x_i) $ avec $x_i in F_i$ 

]
=== Sommes directes orthogonales
#context-block[
  Si $F$ et $G$ sont orthogonaux, ils sont en somme directe :

  $F perp G => F osum G$ (on note $F operp G$)
]
=== Expression analytique d'une projection orthogonales sur un sous-espace vectoriel de dimension finie
#context-block[
  Soit $F subset E$ un sev de dimension finie.
  
  Alors $E = F osum F^perp$

  Et pour toute base orthonormée $(e_1, dots, e_n)$ de $F$, 
  $ p_F : x |-> sum_(i=1)^p scal(e_i,x) e_i $
  est la projection orthogonale sur $F$ (parallèlement à $F^perp$)
]
=== Caracterisation des bases orthonormées par la matrice associée au produit scalaire
#context-block[
  Soit $(u)$ une base de $E$,

  alors $(u)$ est orthonormée si, et seulement si, sa matrice associée au produit scalaire $cal(G)_((u))$ est la matrice identité.
]
