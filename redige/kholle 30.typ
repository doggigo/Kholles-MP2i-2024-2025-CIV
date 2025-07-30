#import "@local/presets:0.1.0" : doc_aufranc
#import "@local/utils:0.1.0" : *

#show :doc_aufranc.with(title: "Kholle 30",fontsize: 12pt, numbering: none)


== Calcul : $display(sum_(k=0)^n binom(n,k) binom(m,p-k) = binom(n+m,p))$
\
#context-block[
D'un côté :
$
(1+t)^(n+m) &= sum_(p=0)^(n+m) binom(n+m,p)t^p \ 
$ 
De l'autre :
$
  (1+t)^(n+m) &= (1+t)^n (1+t)^m \
  (1+t)^n (1+t)^m &= (sum_(k=0)^n binom(n,k)t^i)(sum_(j=0)^m binom(m,j) t^k) \
  & = sum_(k=0)^(n)sum_(j=0)^m binom(n,k) binom(m,j) t^(k+j) \
$
  Posons $p = k +j$. (Alors $j = p - k$)

  On regroupe les termes en $t^p$ :
  $ (1+t)^n (1+t)^m = sum_(p=0)^(n+m) sum_(k=0)^n binom(n,k)binom(m,p-k) t^p = (1+t)^(n+m) = sum_(p=0)^(n+m) binom(n+m,p)t^p $

Ainsi, par identification, on a le résultat.
]
#point(10)

== Définitions : Probabilité et probabilité conditionnelle

=== Probabilité
#context-block[

  Une probabilité sur $Omega$, univers fini associé à une expérience aléatoire, est une application $P$ de $cal(P)(Omega)$ dans $[0,1]$ telle que :
  + $P(Omega) = 1$
  + Pour tout couple $(A,B)$ d'événements incompatibles : $ P(A union B) = P(A) + P(B) $

  On dit que $(Omega,cal(P)(Omega), P)$ est un espace probabilisé fini.

  $(Omega,cal(P)(Omega))$ est dit espace probabilisable.
  Pour toute partie $A$ de $cal(P)(Omega)$, $P(A)$ est la probabilité de l'évènement A.
]
#point(15)
=== Probabilité conditionnelle
#context-block[
  Si $A$ et $B$ sont deux événements tels que $P(B) > 0$, la probabilité de $A$ sachant $B$ est :
  $ P_B (A) = P(A|B) = P(A inter B)/P(B) $
]
#point(20)

== Énoncé des différentes formules

#smallcaps[Probabilités totales]
#context-block[
  Soit $(A_1, dots, A_n)$ un système complet d'événements. Alors :
  $ P(A) = sum_(i=1)^n P(A inter A_i) = sum_(i=1)^n P(A|A_i)P(A_i) $
]
#point(20)

#smallcaps[Probabilités composées]
#context-block[
  Soit $(A_1, dots, A_n)$ une famille finie d'événements. Alors :
  $ P(A_1 inter dots inter A_n) &= P(A_1)P(A_2|A_1)P(A_3|A_1 inter A_2) dots P(A_n|A_1 inter dots inter A_(n-1)) \
  &= P(A_1|A_2 inter dots inter A_n) P(A_2|A_3 inter dots inter A_n)dots P(A_(n-1)|A_n)P(A_n)
  \
  $
  Plus synthétiquement :
  $
  P(inter.big_(i=1)^n A_i) &= P(A_1) product_(i=2)^n P(A_i | inter.big_(j=1)^(i-1)A_j) = product_(i=1)^(n-1) P(A_i|inter.big_(j=i+1)^(n) A_j)P(A_n) $
]
#point(20)

#smallcaps[Formule de Bayes]
#context-block[
  Soit $(A_1, dots, A_n)$ un système complet d'événement. Alors :
  $ P(A_i|A) = P(A inter A_i)/P(A) = (P(A|A_i)P(A_i))/display(sum_(k=1)^n P(A|A_k)P(A_k)) $
]
#point(22)

#pagebreak()

= Théorèmes à énoncer
== Définition du langage des probabilité
\

- *Expérience (ou épreuve) aléatoire* 
lancer un dé, prendre une boule dans une urne, etc.

- *Issue / éventualité*
résultat possible d'une expérience aléatoire

- *Univers* (Noté $Omega$)
ensemble des résultats possibles (ou issues)

- *Événement*
Sous-ensemble de résultats d'expériences (d'issues), c'est une partie de $Omega$

- *Événement certain*
Représenté par $Omega$

- *Événement impossible*
Représenté par $emptyset$
- *Événement contraire de $A$*
Noté $overline(A)$ ou $complement_Omega A$
- *probabilité* : _Dans les questions de cours_