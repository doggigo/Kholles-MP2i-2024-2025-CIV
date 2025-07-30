#import ("@local/presets:0.1.0") : doc_aufranc
#import ("@local/utils:0.1.0") : *

#show: doc_aufranc.with(title: "Kholle, Semaine 28", fontsize: 12pt,numbering: none)
#set enum(numbering: "(1) (a)")


== Énoncé des propriétés de l'intégrale d'une fonction continue par morceaux sur un segment.
($18#aufranc.fleche$)
Soit $f in C^0_(p m)([a,b], KK)$

#smallcaps[Propriétés]

#airy-paragraph[
  + *Linéarité* : #application($RR$,$RR$,$f$,$integral_([a,b])f$) est linéaire.
  + $"Si" KK = CC, integral_[a,b](Re f) + i integral_[a,b](Im f)$
+ $"Cas" KK = RR, "pour "f" et "g thin C^0_(p m) "sur" [a,b]$ (rappel) :
  + *positivité* : $"si" f "est à valeurs positives sur" [a,b]", alors" integral_[a,b] f >= 0$
  + *croissance* : $"si" f <= g "sur [a,b], alors" integral_[a,b]f <= integral_[a,b]g$
  + *Critere de nullité* :"si f continue et à valeurs positives sur $[a,b]$, alors $integral_[a,b]f=0$ si, et seulement si, $f$ est nulle sur $[a,b]$
+ *Inégalité de la moyenne* : $lr(|integral_[a,b]f = 0|) <= lr(|integral_[a,b]|f| |) <= |b-a| display(Sup_(x in [a,b]))|f(x)|$
+ *Relation de Chasles* : pour $c in ]a,b[, f in C^0_(p m)([a,b],KK)$ si, et seulement si, ($f in C^0_(p m)([a,c],KK) "et" f in C^0_(p m)([c,b],KK)$) et alors $integral_[a,b]f = integral_[a,c]f + integral_[c,b] f$
]
\
\

== Théorème de prolongement
($27 aufranc.fleche$)

#smallcaps[Théorème de prolongement :]

#context-block[
  Soit $f$ continue sur $[a,b]$ et de classe $C^1$ sur $]a,b]$ 
  On suppose que f' admet une limite $l$ en $a$.
  Alors f est de classe $C^1$ sur $[a,b]$ et $f'(a) = l$
]

#smallcaps[Preuve :]

#airy-paragraph(leading:0.8em,spacing:0.9em)[
  Soit $epsilon >0$, par hypothèse il existe un voisinage de $a$ sur lequel $|f'(x) - l| <= epsilon$.

On applique l'inégalité des AF à $g: x |-> f(x) - f(a) - (x-a)l$, qui est $C^0 "sur" [a,b]$ et $C^1" sur "]a,b[$ par théorème d'opération. 

$g$ vérifie $|g'(x)| = |f'(x) - l| <= epsilon$ pour $x in ]a,b[$. On obtient alors, pour $x in [a,b]$ : 

$|g(x) - g(a)| = |f(x) - f(a) - (x-a)l| <= epsilon |x-a|$. 

Ce qui montre bien que $f$ est dérivable en $a$ de dérivée $l$ = $display(lim_(x -> a) f'(x))$ et qui assure la continuité de $f'$ sur $[a,b[$.
]



#pagebreak()
== Énoncés des trois formules de Taylor.

$28 aufranc.fleche$ 

#smallcaps[Formule de Taylor avec reste intégral]

#context-block[
  Soit $f$ de classe $C^(k+1)$ sur $I$, et soit $a$ un point de $I$. Pour tout $x$ de $I$ :
  

  $ f(x) = sum_(i=0)^k (x-a)^i/i!f^((i))(a) + R_k(x)" avec" R_k(x) = 1/k! integral_a^x (x-t)^k f^(k+1)(t)"d"t $
]

\
$29 aufranc.fleche$

#smallcaps[Inégalité de Taylor-Lagrange]

#context-block[
  Soit $f$ de classe $C^(k+1)$ sur I, telle que $forall x in I, |f^(k+1)(x)| <= M_(k+1).$ Pour tout" $x in I$ :


  $ lr(|f(x) - sum_(i=0)^k (x-a)^i/i!f^((i))(a)|) = |R_k (x)| <= M_(k+1)/(k+1)!|x-a|^(k+1)
$]


\
$30 aufranc.fleche$

#smallcaps[Formule de Taylor-Young]
#context-block[
  
  Toute fonction $f in C^k (I,KK)$ admet en tout point $a in I$ un développement limité à l'ordre $k$ :
  $ f(x) = sum_(i=0)^k (x-a)^i/i! f^((i))(a) + smallo_(x->a)(x-a)^k $
  
]

#pagebreak()

= Formulaire de développements limités
$
e^x &= 1 + x/1! + x^2/2! + x^3/3! + dots + x^n/n! + smallo_(x ->0)(x^n)\
(1+x)^alpha &= 1 + alpha x + alpha(alpha - 1)/2! x^2 + dots + (alpha(alpha-1)...(alpha-n+1))/n!x^n + o_(x->0)(x^n) \
cos x &= 1 - x^2/2! + x^4/4! - dots + (-1)^n x^(2n)/(2n)! + smallo_(x->0)(x^(2n+1)) \
ch x &= 1 + x^2/2! + x^4/4! + dots + x^(2n)/(2n)! + smallo_(x->0)(x^(2n+1))\
sin x &= x - x^3/3! + x^5/5! + ... + (-1)^n x^(2n+1)/(2n+1)! + smallo_(x->0)(x^(2n+2))\
sh x &= x + x^3/3! + x^5/5! + ... + x^(2n+1)/(2n+1)! + smallo_(x->0)(x^(2n+2))\
tan x &= x + x^3/3 + 2/15 x^5 + smallo_(x->0)(x^6)\
th x &= x - x^3/3 + 2/15 x^5 + smallo_(x->0)(x^6) \
1/(1-x) &= 1 + x + x^2 +...+x^n + smallo_(x->0)(x^n) \
1/(1+x) &= 1 - x + x^2 - dots + (-1)^n x^n + smallo_(x->0)(x^n)\
ln(1+x) &= 1 + x + x^2/2 + ... + x^n/n + smallo_(x->0)(x^n)
$

