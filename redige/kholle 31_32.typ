#import "@local/presets:0.1.0" : doc_aufranc
#import "@local/utils:0.1.0" : *

#show: doc_aufranc.with(title: "Kholle 31-32", fontsize:12pt, numbering: none)
#set enum(numbering: "1)")

== Lois usuelles au choix du colleur : schéma, loi, espérance et variance.
=== Loi uniforme
- $X (-> cal(U)_n$ ( Schéma : Équiprobabilité)
- $X(Omega) = [|1,n|]$
- Loi : $P(X = k) =  1/n$
- $Esp(X) = (n+1)/2$
- $Var(X) = (n^2 - 1)/12$
=== Loi de Bernoulli
- $X (-> cal(B)(p)$ (Schéma : Succès d'un critère)
- $X(Omega) = {0;1}$
- $P(X = 1) = p$ et $P(X = 0) = q = 1-p$
- $Esp(X) = p$
- $Var(X) = p q$

=== Loi Binomiale
- $X (-> cal(B)(n,p)$ (Schéma : $n$ répétitions indépendantes de $cal(B)(p)$)
- $X(Omega) = [|0,n|]$
- $P(X = k) = binom(n,k)p^k q^(n-k)$
- $Esp(X) = n p$
- $Var(X) = n p q$

== Énoncé des propriétés de l'espérance (dont théorème de transfert).
+ *Linéarité de l'espérance* : pour tout scalaire $a$, $Esp(a X + Y ) = a Esp(X) + Esp(Y)$.
+ Si $X(Omega) subset [a, b]$, alors $a <= Esp(X) <= b$.
+ Positivité et croissance de l'espérance.
+ *Théorème de transfert* : soit $f$ définie sur $X(Omega)$ à valeurs réelles, alors : $ Esp(f(X)) = sum_(x in X(Omega)) f(x)P(X = x) $
+ Si $X$ et $Y$ sont indépendantes, alors $Esp(X Y)$ = $Esp(X)Esp(Y)$ ; la réciproque est fausse.

#pagebreak()

== Énoncé des propriétés de la variance (et covariance) (dont variance d'une somme).
#set enum(numbering: "a)")
#smallcaps[Propriété de la variance]
+ Si $Var(X) = 0$, X est "presque sûrement" constante.
+ $Var(X) = Esp(X^2) - (Esp(X))^2$ (formule de Kœnig-Huygens)
+ $Var(a X + b) = a^2 Var(X)$ et $sigma(a X + b) = |a|sigma(X)$

#smallcaps[Variance d'une somme et propriétés de la covariance]

En posant $Cov(X,Y) = Esp(X Y)-Esp(X)Esp(Y) = Esp((X-Esp(X))(Y-Esp(Y)))$

($Cov$ est la "Covariance" de $X$ et $Y$)

+ $Var(X+Y) = Var(X) + Var(Y) + 2Cov(X,Y)$ et $Var(X-Y) = Var(X) + Var(Y) - 2Cov(X,Y)$
+ $ Var(sum_(i=1)^n X_i) = sum_(i=1)^n V(X_i) + 2 sum_(1<=i<j<=n)Cov(X_i,X_j) $
+ Si $X$ et $Y$ sont indépendantes, $Cov(X,Y) = 0$ et $V(X + Y) = V(X - Y) = V(X) + V(Y)$
+ Si les $X_i$ sont deux-à-deux indépendantes, $Cov(X_i,X_j) = 0$ pour $i != j$ et : $ V(sum_(i=1)^n X_i) = sum_(i=1)^n V(X_i) $ 
#pagebreak()
== Inégalités de Markov et BT.
#smallcaps[Énoncés]
#context-block[
  *Markov :*

  Soit $X$ une variable aléatoire réelle sur $(Omega, cal(P)(Omega), P)$ fini.

  Alors pour tout $q$ naturel et $a > 0$ :
  $ P(|X| >= a) <= Esp(|X|^q)/a^q $

  \
  *Bienaymé-Tchebychev :*
  _Dans le même cadre d'hypothèses :_
  $ P(|X - Esp(X)| >= a) <= Var(X)/a^2 $
]

#smallcaps[Démonstrations]

#blocky-paragraph[
_Markov :_


Par le théorème de transfert :
$ Esp(|X|^q) = sum_(x in X(Omega), |x| >= a) |x|^q P(X = x) + sum_(x in X(Omega), |x|< a) |x|^q P(X = x) $

ces sommes étant bien définies puisque finies et positives.

On en déduit :
$ Esp(|X|^p) >= sum_(x in X(Omega), |x| >= a) |x|^q P(X = x) >= a^q P(X >= a) \
<=> P(|X| >= a) <= Esp(|X|^p)/a^p 
$

Puisque $P(X >= a) <= P(|X| >= a)$, on a aussi le résultat sans la valeur absolue sur $X$

\

_Bienaymé-Tchébychev :_

C'est l'inégalité de Markov avec $q = 2$ et $X - Esp(X)$
]

#pagebreak()

== Théorèmes à citer

=== Théorème-Définition loi d'une variable aléatoire

#context-block[
Une variable aléatoire $X$ sur un ensemble probabilisable $(Omega, P(Omega))$ fini est une application de $Omega$ dans un ensemble $E$

Si $E subset RR$ c'est une variable aléatoire réelle.
L'ensemble $X(Omega) = {X(omega) | omega in Omega}$ des valeurs prises par $X$ sur l'univers $Omega$ supposé fini.

Pour toute partie $U$ de $E$, on note "$X in U$" l'ensemble fini $X^(-1)(U) = {omega in Omega | X(omega) in U}$

En particulier :
- si $U = {u}$ un singleton, on note "$X = u$" l'événement $X^(-1)({u})$
- Si $X$ est réel, $X <= u$ désigne l'événement ${omega in Omega | X(omega) <= u}$
]
=== Proposition fonction de répartition

#context-block[Soit X une variable al\éatoire réelle sur un espace probabilisé $(omega, cal(P)(Omega), P)$ fini.
la fonction de répartition $F_X$ de X est définie par : 
$ F_X : application(RR,[0,1], x, P(X <= x)) $]

=== Théorème-Définition couples de variables
#context-block[Soit deux variables aléatoires $X$ et $Y$ définies sur l'espace probabilisé fini $(Omega, cal(P)(Omega), P)$.
Le couple $(X, Y)$ est une variable aléatoire définie sur $(Omega, cal(P)(Omega), P)$.

Sa loi, dite loi conjointe de $X$ et $Y$, est définie sur $X(Omega) times Y(Omega)$ est complètement déterminée par la donnée des $P((X = x_i) inter (Y = y_j) = P((X,Y) = (x_i,y_j))$.

Où $X(Omega) = {x_1, dots, x_p}$ et $Y(Omega) = {y_1, dots, y_q}$
Les lois de $X$ et $Y$ sont appelées *lois marginales* du couple $(X,Y)$ et s'en déduisent :
$ P(X = x) = sum_(i=1)^q P(X = x inter Y = y_i) "et" P(Y=y) = sum_(i=1)^p P(X = x_i inter Y = y) $]
=== Lemme des coalitions
#context-block[_Soit f et g deux fonctions définies sur $X(Omega)^p$ et $X(Omega)^(n-p)$ respectivement._

Si $(X_1, dots, X_n)$ sont mutuellement indépendantes et que les expressions suivantes ont un sens :
$f(X_1, dots, X_p)$ et $g(X_(p+1), dots, X_n)$ sont indépendantes.]

#pagebreak()

=== Théorème-Définition Espérance et théorème de transfert
#context-block[Soit $X$ une variable aléatoire réelle avec $X(Omega) = {x_1; dots; x_n}$ ($x_i$ distincts deux-à-deux)

On appelle espérance de X : $ Esp(X) = sum_(i=1)^n x_i P(X = x_i) = sum_(omega in Omega) X(omega)P({omega}) $

En particulier si $X(Omega) subset NN$ : 
$ Esp(X) = sum_(n=1)^(+ infinity) n P(X = n) = sum_(n=1)^(+infinity)P(X >= n)$
- Interprétation : $Esp(X)$ donne une moyenne (ou barycentre) des valeurs $x_i$ prises par $X$ pondérée par les coefficients P(X = x_i)]
=== Théorème-Définition Variance et formule de Huygens
#context-block[Soit $X$ une variable aléatoire discrète réelle.

On pose $X(Omega) = {x_1, dots, x_n}$ ($x_i$ distincts deux-à-deux)
- On appelle *variance* de $X$ : 
$ Var(X) = Esp(((X) - Esp(X))^2) = Esp(X^2) - Esp(X)^2 thick thick "(Kœnig-Huygens)" \
= sum_(x_i in X(Omega)) (x_i - Esp(X))^2 P(X = x_i)
$
- On appelle *écart type* de $X$ : $sigma(X) = sqrt(V(X))$
- Interprétation : $Var(X)$ mesure la moyenne (au sens de l'espérance) des carrés des écarts entre les valeurs prises par X et son espérance]
