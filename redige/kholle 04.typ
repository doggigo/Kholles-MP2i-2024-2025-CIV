#import "@local/presets:0.1.0" : doc_aufranc
#import "@local/utils:0.1.0" : *
#import "@preview/mannot:0.2.2": markrect

#show: doc_aufranc.with(title:"Kholle 4",fontsize: 12pt, numbering: none)

= Questions de cours

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

#pagebreak()

== Somme géométrique de raison q

Soit $q in RR, n in NN$ et $m in NN$ tel que $m <= n$.

- Si $q != 1$ :
$ (1-q)sum_(k=m)^n q^k = sum_(k=m)^n q^k - sum_(k=m)^n q^(k+1) = sum_(k=m)^n (q^k - q^(k+1)) = q^m sum_(k=0)^(n-m)(q^k -q^(k+1)) "(décalage)" $
C'est une somme télescopique, donc au final :
$ (1-q)sum_(k=m)^n q^k = q^m (1-q^(n-m + 1)) <=> markrect(sum_(k=m)^n q^k = q^m (1-q^(n-m+1))/(1-q)) $

- Si $q = 1$ le résultat est immédiat, c'est $markrect(n-m+1)$.

== Formule du triangle de Pascal et formule efficace
#smallcaps[Formule du triangle de Pascal]

*Énoncé*
#context-block[
  $ forall n in NN, forall k in [|0,n|], binom(n,k) + binom(n,k+1) = binom(n+1,k+1) $
]
*Preuve*
#blocky-paragraph[
  On passe par la forme factorielle, puis on met tout au même dénôminateur 
  
  (qui est $(k+1)!(n-k)!$) :
  $
  &binom(n,k) + binom(n,k+1) = n!/(k!(n-k)!) + (n)!/((k+1)!(n-k-1)!) \
    &= ((k+1)n!)/((k+1)!(n-k)!) + ((n-k)n!)/((k+1)!(n+1 - k-1)!) = (n!(k+1+n-k))/((k+1)!(n+1 - (k+1))!) \
    &= (n+1)!/((k+1)!(n+1 - (k+1))!) = markrect(binom(n+1,k+1))
  $
]

#smallcaps[Formule efficace]

*Énoncé* 
#context-block[
  $ forall n in NN, forall k in [|0,n|], binom(n+1,k+1) = (n+1)/(k+1) binom(n,k) $
]
*Preuve*

Toujours en passant par la forme factorielle :
$
binom(n+1,k+1) = (n+1)!/((k+1)!(n+1 - (k+1))!) = ((n+1) n!)/((k+1)(k!(n-k)!))
$
D'où le résultat.

== Formule du binôme de Newton
*Énoncé*
#context-block[
  $ forall (a,b) in RR^2, forall n in NN, (a+b)^n = sum_(k=0)^n binom(n,k)a^k b^(n-k) $
]
*Preuve*

Par récurrence sur $n in NN$, notons $H(n)$ la propriété demandée :

#underline[Initialisation] :  Pour n = 0, $(a+b)^0=1 = binom(0,0)a^0b^0$ donc $H(0)$ vérifiée.

#underline[Hérédité] : Soit $n in NN$ tel que $H(n)$ vraie.

Alors :
$
&(a+b)^(n+1) = (a+b)(a+b)^n = (a+b)sum_(k=0)^n binom(n,k)a^k b^(n-k) \
&=sum_(k=0)^n binom(n,k)a^(k+1) b^(n-k) + sum_(k=0)^n binom(n,k)a^k b^(n+1-k)\
&= binom(n,n)a^(n+1)b^0 + binom(n,0)a^0 b^n_1 + sum_(k=0)^n (binom(n,k-1) + binom(n,k))a^k b^(n+1-k) = markrect(sum_(k=0)^(n+1) binom(n+1,k)a^k b^(n+1-k))
$
#v(1em)
(À l'aide du triangle de pascal, et du fait que $display(binom(n,n)=binom(n+1,n+1))$ et $display(binom(n,0) = binom(n+1,0))$)

D'où l'hérédité.

#underline[Conclusion] : D'après le principe de récurrence, puisque $H$ est initialisée en 0 et héréditaire, elle est vraie pour tout $n in NN$.

#pagebreak()

= Théorèmes à énoncer
=== Définition et symétrie des coefficients binômiaux
#context-block[
  - Définition :

  Pour $n$ et $k$ naturels, $display(binom(n,k) = 
  cases(
    n!/(k!(n-k)!) #h(1em) &"si "k in [|0,n|],
    0 &"sinon"
  ))$

  - Symétrie :
  Pour tout $(n,k) in NN&^2$, $display(binom(n,k) = binom(n,n-k))$
]

=== Factorisation de $a^n - b^n$
#context-block[
  $ a^n-b^n = (a-b)sum_(k=0)^(n-1)a^k b^(n-1-k) = (a-b)sum_(p+q = n-1) a^p b^q $
]

=== Valeurs de $display(sum_(k=0)^n k^p)$ pour p = 1, 2, 3
#context-block[
  $
  sum_(k=0)^n k &= n(n+1)/2 \
  sum_(k=0)^n k^2 &= n(n+1)(2n+1)/6 \
  sum_(k=0)^n k^3 &= (sum_(k=0)^n k)^2 = (n^2(n+1)^2)/4
  $
]