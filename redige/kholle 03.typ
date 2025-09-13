#import "@local/presets:0.1.0" : doc_aufranc
#import "@local/utils:0.1.0" : *
#import "@preview/mannot:0.2.2": markrect

#show: doc_aufranc.with(title:"Kholle 3",fontsize: 12pt, numbering: none)
#show table.cell: set text(size: 13pt)

= Questions de cours

== L'implication : définition, table de vérité, négation, contraposée
#smallcaps[Définition]
#context-block[
  Soient $P$ et $Q$ deux propositions.

  La proposition $P ==> Q$ ("$P$ implique $Q$") est fausse si $P$ est vraie et si $Q$ est fausse, vraie sinon.

  Autrement dit: $(P ==> Q) <==> ((not P) or Q)$
]

#smallcaps[Table de vérité]
#table(
  columns: (10%, 10%, 15%),
  table.header[$P$][$Q$][$P => Q$],
  [$F$],[$F$],[$V$],
  [$F$],[$V$],[$V$],
  [$V$],[$F$],[$F$],
  [$V$],[$V$],[$V$]
)

#smallcaps[négation]
#context-block[
  $
  (not(P => Q)) <==> (not(not P or Q)) <==>^("De Morgan ") (not not P and not Q) 
  \
  <==>^("double négation") markrect((P and not Q))
  $
]

#smallcaps[Contraposée]
#context-block[
  #serif[
*Énoncé :* $(P ==> Q) <==> (not Q ==> not P)$

*Preuve :*

$(not Q ==> not P) <==> (not not Q or not P) <==>^("double négation")_("commutativité de "or) (not P or Q) <==> markrect((P ==> Q))$
]
]

#pagebreak()

== Preuve par récurrence sur $n$ de : $display(sum_(k=0)^n k = (n(n+1))/2)$

#v(10pt)
#blocky-paragraph[
Montrons par récurrence sur $n in NN$ la propriété $display(P(n) : sum_(k=0)^n k = n(n+1)/2)$

#v(10pt)

#underline[Initialisation :] $P(0): 0 = (0 times 1)/2 = 0$ Vrai. Donc $P$ est initialisée.

#underline[Héredité :] Soit $n in NN$ tel que $P(n)$ est vérifiée. Montrons $P(n+1)$ :
$
& n+1 + sum_(k=0)^(n) k = n+1 + n(n+1)/2 \
<=>& sum_(k=0)^(n+1) k = (2n+2 + n^2 + n)/2 = (n^2 + 3n + 2)/2 \
&"En factorisant en haut par" n+1", on obtient bien :" \
& sum_(k=0)^(n+1) k = ((n+1)(n+2))/2
$

Donc $P(n+1)$ vérifiée, ainsi $P$ est héréditaire.

#underline[Conclusion :] D'après le principe de récurrence, puisque $P$ est initialisée au rang 0 et héréditaire, elle est vraie pour tout $n in NN$. 
]

#pagebreak()

== Montrer que toute fonction de $RR$ dans $RR$ écrit de manière unique comme somme d'une fonction paire et d'une fonction impaire (Notes chap. 1, point 14)
#blocky-paragraph[
Procédons par Analyse-Synthèse :
#v(10pt)
*Analyse :*

Soit $f$ une fonction de $RR$ dans $RR$, et supposons qu'elle puisse s'écrire $p + i$ avec $p$ paire et $i$ impaire.
Alors, on a :
$ casesn(
  f(x) = p(x) + i(x),
  f(-x) = p(x) - i(x)
  ) $
avec $1/2 ((1) + (2))$, on obtient : $ forall x in RR, p(x) = (f(x) + f(-x))/2 $

avec $1/2((1) - (2))$, on obtient : $ forall x in RR, i(x) = (f(x) - f(-x))/2 $

On peut vérifier que $p$ est bien paire et que $i$ est bien impaire.

_L'analyse nous a donné une piste pour la question de l'existence, et nous a donné l'unicité de la décomposition annoncée._

*Synthèse :*

Soit $f$ fonction de $RR$ dans $RR$ et $p$, $i$ telles que 
$ p(x) = (f(x) + f(-x))/2 "et" i(x) = (f(x) - f(-x))/2 $
$p$ est bien paire, et $i$ est bien impaire, et $f = p + i$, ce qui montre l'existence de la décomposition annoncée.

#underline[On a bien l'existence et l'unicité de notre décomposition.]

Un exemple vu plus tard dans l'année (si le colleur en demande un) :
$ e^x = ch(x) + sh(x) $
avec ch et sh respectivement "cosinus hyperbolique" et "sinus hyperbolique" :
$ ch(x) = (e^x + e^(-x))/2 #h(2em) sh(x) = (e^x - e^(-x))/2 $
]


#pagebreak()

== Forme canonique et relations coefficients-racines pour un trinôme de degré 2

#blocky-paragraph[
  #smallcaps[Forme canonique]

  Soit $p:x |-> a x^2 + b x + c$ un trinôme du second degré.
  
  On factorise d'abord par $a$ :
  $ p(x) &= a(x^2 + b/a x + c/a) $
  Puis, pour mettre sous la forme canonique, on fait apparaître le début d'un carré :
  $ p(x) &= a((x + b/(2a))^2 + (-b^2/(4a^2) + c/a)) = a((x - (-b)/(2a))^2 +((-b^2 + 4 a c)/(4a^2))) $
  en posant $alpha = -b/(2a)$ et $beta = (-b^2 + 4a c)/(4a^2)$,
  on obtient la forme canonique d'un trinôme du second degré : $p(x) = a(x-alpha)^2 + beta$.
  
  _On sait alors que p admet un extremum en $alpha$, avec $f(alpha) = beta$._

  #smallcaps[Relations coefficient-racine]
  #v(.5em)
  Soit $display(p\: x |-> a x^2 + b x + c =a(x^2 + b/a x + c/a))$ dont on suppose qu'il possède deux racines réelles $x_1$ et $x_2$.

  alors $p(x) = a(x-x_1)(x-x_2)$

  Donc 
  $ 
  &(x-x_1)(x-x_2) = x^2 - (x_1 + x_2)x + x_1 x_2 &= x^2 + b/a x + c/a \
  $
  Ainsi, par identification, on obtient : $ cases(x_1 + x_2 = -b/a,x_1x_2 = c/a) $
  D'où les relations coefficients-racines d'un trinôme du second degré.
]

== Somme géométrique de raison q

Soit $q in RR, n in NN$ et $m in NN$ tel que $m <= n$.

- Si $q != 1$ :
$ (1-q)sum_(k=m)^n q^k = sum_(k=m)^n q^k - sum_(k=m)^n q^(k+1) = sum_(k=m)^n (q^k - q^(k+1)) = q^m sum_(k=0)^(n-m)(q^k -q^(k+1)) "(décalage)" $
C'est une somme télescopique, donc au final :
$ (1-q)sum_(k=m)^n q^k = q^m (1-q^(n-m + 1)) <=> markrect(sum_(k=m)^n q^k = q^m (1-q^(n-m+1))/(1-q)) $

- Si $q = 1$ le résultat est immédiat, c'est $markrect(n-m+1)$.


#pagebreak()

= Théorèmes à citer

Posons $P$ et $Q$ deux propositions.

=== Double négation
#context-block[
  la proposition $not not P$ est équivalente à $P$
]

=== Lois de De Morgan
#context-block[
  Les lois de De Morgan sont les suivantes :
  $
  not (P or Q) <==> not P and not Q \
  not (P and Q) <==> not P or not Q
  $
]

=== Principe de contraposition
#context-block[
  La proposition $P ==> Q$ est équivalente à $not Q ==> not P$.

  Ainsi, on peut appliquer ce principe à un énoncé de la forme "$P ==> Q$" en "$not Q ==> not P$", ce qui est parfois plus facile.
]

=== Principe de double implication
#context-block[
  La proposition $P <==> Q$ est équivalente à $P ==> Q and Q ==> P$.

  Ainsi, pour prouver $P <==> Q$, on peut prouver séparément $P ==> Q$ et $Q ==> P$ 
]

=== Négation et quantificateurs
#context-block[
  Soit $P$ un prédicat à une variable sur $E$.

  La négation de "$forall x in E, P(x)$" est "$exists x in E, not P(x)$" 

  La négation de "$exists x in E, P(x)$" est "$forall x in E, not P(x)$"

  Autrement dit, pour nier une proposition, on doit changer les $exists$ en $forall$, et les $forall$ en $exists$.
]

=== Principe de récurrence
#context-block[
  Soit $P$ un prédicat sur $NN$. On suppose :
  $
  &P(0) "vraie" &ita("(initialisation)") \
  &forall n in NN, P(n) ==> P(n+1) &ita("(hérédité)")
  $
  Alors : $forall n in NN, P(n)$ #h(1em) ($P(n)$ est vraie pour tout naturel $n$)
]

