#import "@local/presets:0.1.0" : doc_aufranc
#import "@local/utils:0.1.0" : *

#show: doc_aufranc.with(title:"Kholle 33",fontsize: 12pt, numbering: none)

== Une boule ouverte est voisinage de chacun de ses points
#smallcaps[Énoncé]
#context-block[
  Une partie $cal(O)$ de $RR^2$ est ouverte si, et seulement si, $cal(O)$ est "Voisinage de chacun de ses points"

  C'est-à-dire : $ forall x in cal(O), exists r > 0, B(x,r) subset cal(O) $
]

#smallcaps[Démonstration]
#blocky-paragraph[
  Par double implication :
  - $underline(=>)$ : Soit $cal(O)$ un ouvert, si $cal(O) = emptyset$, on a le resultat.

  Sinon, c'est une réunion de boules ouvertes. Soit un point $x in cal(O)$, alors $x$ est dans une boule $B(a,r)$ incluse dans $cal(O)$. Ainsi, il reste à montrer qu'une boule ouverte est voisinage de chacuns de ses points. 

  Graphiquement, on voit qu'on peut espérer $B(x,r - ||x-a||) subset B(a,r)$.

  Soit donc $y in B(x,r')$, avec $r' = r - ||x-a||$ note que $r' > 0$ puisque $x subset B(a,r)$
  Alors : 
  $ ||y-a|| = ||y-x+x-a|| <= r' + ||x-a|| = r $ 
  Ce qui donne bien $B(x,r - ||x-a||) subset B(a,r)$.
  $cal(O)$ est donc bien voisinage de $x$

  - $underline(<==)$ : Soit $cal(O)$ une partie de $RR^2$ voisinage de chacun de ses points.
  
  Cela signifie que pour tout $x in cal(O)$ il existe un rayon strictement positif $r_x$ tel que $B(x,r_x) subset cal(O)$. 

  En posant $cal(O)' = display(union.big_(x in cal(O)) B(x,r_x))$, on a $cal(O)' subset cal(O)$ par construction, et clairement $cal(O) subset cal(O)'$ puisque tout $x in cal(O)$ appartient à $cal(O)'$, donc finalement $cal(O)' = cal(O)$ ce qui montre bien que O est une réunion de boules ouvertes.

  D'après le principe de double implication, on a l'équivalence.
]

#point(6)

#pagebreak()

== Définition de la continuité ; les applications linéaires sont continues
=== Continuité
#smallcaps[Définition]
#context-block[
  $f : D subset RR^2$ où $D$ est un ouvert de $RR^2$, est continue en $a in D$, si $f$ admet $f(a)$ pour limite en en $a$:
  $
  forall epsilon > 0, exists eta > 0, forall x in D, ||x-a|| < eta => |f(x) - f(a)| < epsilon
  $
]

=== Les applications linéaires (de $RR^2$ dans $RR$) sont continues

#smallcaps[Démonstration]

#blocky-paragraph[
  On a déjà vu dans le deuxième chapitre d'applications linéaires que toute application linéaire $f : RR^2 -> RR$ prend la forme : $(x_1, x_2) |-> lambda x_1 + mu x_2$, où $lambda, mu$ sont deux éléments de la matrice représentative de l'application sur la base canonique, ou encore ses coordonnées sur la base des formes coordonnées relativement à la base canonique.

  Pour $a = a_1 e_1 + a_2 e_2$ et $x = x_1 e_1 + x_2 e_2$ dans $RR^2$, il vient :
  $ |f(x) - f(a)| &= |lambda (x_1 - a_1) + mu (x_2 - a_2)|
  <= sqrt(lambda^2 + mu^2) ||x-a|| \
  &<= Max(|lambda|,|mu|)sqrt(2)||x-a|| $
  
  En utilisant l'inégalité de Cauchy-Schwarz (avec $u = (lambda,mu), v = (x_1-a_1, x_2-a_2)$).

  Ainsi $f$ est $k$-lipschitzienne donc (uniformément) continue
  - en particulier les formes coordonnées $(x_1,x_2) |-> x_1$ et $(x_1,x_2) |-> x_2$ sont continues sur $RR^2$.

  #point(11)
]

#pagebreak()

== Énoncé des définitions des dérivées partielles et dérivée partielle suivant un vecteur, théorème-définition du gradient
#smallcaps[Définitions]
#context-block[
  #serif[*Dérivées partielles :*]
  - En un point $a = (a_1,a_2)$
  Première dérivée partielle de $f$ en $a$ :

  c'est la dérivée, si elle existe, de $f_(a,1)$ en $a_1$ autrement dit, si la limite existe :
  $ (partial f)/(partial x_1)(a) = partial_1 f(a) = lim_(h->0)(f(a_1+h,a_2)-f(a))/h $ 
  de même pour $f_2$ :
  $ (partial f)/(partial x_2)(a) = partial_2 f(a) = lim_(h->0)(f(a_1,a_2+h)-f(a))/h $ 
  - En un vecteur $v$
  Soit $v$ un vecteur non-nul de $RR^2$

  $f$ admet en $a in D$ une dérivée partielle suivant le vecteur $v$, noté $partial_v f(a)$, quand la limite suivante existe : $ lim_(h -> 0)(f(a+h v) - f(a))/h = partial_v f(a) $
  
  \

  #serif[*Gradient :*]
  
  Soit $f$ de classe $C^1$ sur $D$. En tout point $a$ de $D$ et pour tout $h = (h_1, h_2)$ dans $RR^2$ :
  $ f(a+h) &= f(a) + h_1 (partial f)/(partial x_1)(a) + h_2 (partial f)/(partial x_2)(a) + smallo_(h ->0_(RR^2))(||h||) \
  &= f(a) + scal(gradient f(a),h) + smallo_(x -> 0_(RR^2))(||h||) $
  Où on note $gradient f(a) = display(vec(partial_1 f(a), partial_2 f(a)))$ l'unique vecteur de $RR^2$ vérifiant cette relation, appelé #serif[*gradient*] de $f$ en $a$ 
]
#pagebreak()

== $|| ||$ est $C^1$ sur $RR^2$ privé de l'origine, mais pas sur $RR^2$, gradient
#smallcaps[Démonstrations]
#blocky-paragraph[
Posons $f : x |-> ||x||$ définie sur $RR^2$,

en tout point $(x_1, x_2)$ distinct de $(0,0)$, $partial_1f(x_1,x_2) = display(x_1/(||x||))$ et $partial_2f(x_1,x_2) = display(x_2/(||x||))$

ces deux fonctions sont continues sur $RR^2$ privé de l'origine, par théorème d'opérations, donc $f$ y est de classe $C^1$.
En $0_(RR^2)$, $f$ est nulle et il n'y a pas de dérivée première partielle : les limites à gauche et à droite en 0 des rapports de définition sont distinctes ($-1$ à gauche, $1$ à droite). Dont $f$ n'est pas de classe $C^1$ sur $RR^2$.

Pour le gradient, on prend ce que l'on a trouvé dans la démonstration : 
$ gradient(|| ||)(a) = vec(a_2/(||a||),a_1/(||a||)) = 1/(||a||)a $
]


(*#aufranc.fleche Pratiques 2 et 3*)

== Énoncé du théorème d'opérations sur les fonctions $C^1$ (gradients d'une somme, d'un produit, d'une composée si définis, dont règle de la chaîne)
#smallcaps[Théorème d'opérations]
#context-block[
  #set enum(numbering: "a)")
  + L'ensemble $C^1(D,RR)$ des fonctions de classe $C^1$ sur $D$ ouvert de $RR^2$, muni de la somme et de la multiplication externe par un réel, forme un espace vectoriel sur $RR$ stable par produit
  + Soit $f$ de classe $C^1$ sur un ouvert $U$ de $RR^2$ à valeurs dans $RR$ et g de classe $C^1$ sur un ouvert $V$ de $RR$ contenant $f(U)$ (et à valeurs réelles).
    
    Alors $g compose f$ est de classe $C^1$ sur $U$ et pour tout $a$ dans $U$ : $gradient (g compose f)(a) = g'(f(a))gradient f(a)$
  + #serif[#smallcaps[Règle de la chaîne]] : Si $u$ et $v$ sont de classe $C^1$ sur un ouvert $U$ de $RR$ et $g$ sur un ouvert $V$ de $RR^2$ contenant $(u,v)(U)$ alors $h : t |-> g(u(t), v(t))$ est de classe $C^1$ sur $U$ et pour tout $a$ de $U$ :
    $ h'(a) = partial_1 g(u(a),v(a)).u'(a) + partial_2g(u(a),v(a)).v'((a)) = scal(gradient g(u(a),v(a)),vec(u'(a),v'(a))) $
    
    (On peut le voir comme :
    $display((d h)/(d t) = (partial g)/(partial u) (d u)/(d t) + (partial g)/(partial v) (d v)/(d t))$ évaluée en $t = a$, on voit bien d'où vient le nom "règle de la chaîne")
]
