#import "@local/presets:0.1.0" : doc_aufranc
#import "@local/utils:0.1.0" : *
#import "@preview/mannot:0.2.2": markrect

#show: doc_aufranc.with(title:"Kholle 7",fontsize: 12pt, numbering: none)

= Questions de cours

== Points du plan complexe d'affixes $z$ tels que $(z+i)/(z+1)$ soit réel (Pratique 3)

#blocky-paragraph[
  Posons $z = a + i b$ avec $(a,b) in RR^2$. Cherchons une CNS sur $a$ et $b$ pour que $display((z+1)/(z+i)) in RR$. Càd :
  $display((a + 1 + i b)/(a + i(b + 1)) = (a-i(b+1))/(a-i(b+1)) . (a + 1 + i b)/(a + i(b + 1)) = ((a-i(b+1))(a+1 + i b))/(a^2 + (b+1)^2)) in RR$

  #v(.5em)
  Donc Il faut que $(a-i(b+1))((a+1)+i b)$ soit réel et que $z != -1$.
  
  C'est-à-dire que la partie imaginaire doit être nulle : $ i(a b - (a+1)(b+1)) = 0 <==> a + b + 1 = 0 $
  Les complexes cherchés sont donc les affixes des points du plan complexe suitués sur la droite d'équation $y = - x - 1$, privée du point $vec(-1,0)$
]

== Linéariser $sin^3 cos^3$ (Pratique 8)

Soit $x in RR$.
On va utiliser l'identité : $sin(2x) = 2sin(x)cos(x)$ :

$ &sin^3(x)cos^3(x) = (sin(x)cos(x))^3 = (1/2 sin(2x))^3 = 1/8 ((e^(i 2x) - e^(-i 2 x))/(2i))^3 \
&= -1/(64i)(e^(i 6x) - 3e^(i 2 x) + 3 e^(-i 2x)-e^(-i 6x)) 
= -1/(64i)((e^(i 6x)-e^(-i 6x)) - 3(e^(i 2 x) - e^(-i 2x))) \ 
&= -(-2i)/(64i) sin(6x) - (2i)/(64i)3 sin(2x)  = -1/32 sin(6x) + 3/32 sin(2x) $

== La Technique de l'angle moitié
_La technique de l'angle moitié permet de factoriser $e^(i a) +- e^(i b)$, avec a et b réels_

Soit $(a,b) in RR^2$, alors :
$ e^(i a) + e^(i b) = e^(i(a + b)/2)(e^(i(a-b)/2) + e^(-i(a-b)/2)) = 2e^(i(a+b)/2)cos((a-b)/2) $
Et :
$ e^(i a) - e^(i b) = e^(i(a+b)/2)(e^(i(a-b)/2) - e^(-i(a-b)/2)) = 2i e^(i(a+b)/2)sin((a-b)/2) $

_Peut-être écrire $exp(x)$ plutôt que $e^x$ au tableau... sinon c'est un peu imbuvable_
#pagebreak()
== Théorème de description des racines $n$-ièmes d'un complexe.
#smallcaps[Énoncé]
#context-block[
  Soit $n in NN^*$ et $z = rho e^(i theta)$ avec $rho > 0$ un complexe non-nul.
  - $0$ admet une unique racine n-ième qui est 0.
  - $z$ possède $n$ racines $n$-ièmes distinctes deux-à-deux : $root(n,rho)exp(i theta/n + (2i k pi)/n)$ pour $k in [|0,n-1|]$
  En particulier : l'ensemble des racines $n$-ièmes de l'unité est : $ UU_n = {e^((2 i k pi)/n) | k in [|0,n-1|]} $
]

#smallcaps[Preuve]
#blocky-paragraph[
  Cherchons sous forme trigonométrique $r e^(i phi)$ les complexes de puissance $n$-ième $z = rho e^(i theta)$ non-nul.
  
  On obtient par passage au module : $r^n = rho$. Donc par positivité de $r$, $r = root(n,rho)$.

  Puis $e^(i n phi) = e^(i theta)$ donc $phi = theta/n$ modulo $2 pi \/ n$, ce qui donne $n$ racines $n$-ièmes de $z$ également réparties sur le cercle du plan complexe centré à l'origine et de rayon $root(n,|z|).$ On voit aussi que ces $n$ racines s'obtiennent en multipliant $root(n,rho)e^(i theta\/n)$ par les racines $n$-ièmes de l'unité.
]

== Calcul des racines carrées sous forme algébrique de $3 - 4i$ (Pratique 13) 

_Rappel de la méthode :_
#context-block[
  On cherche $zeta = x + i y$ tel que $zeta^2 = z = a + i b$ avec $(a,b) in RR^2, (x,y) in RR^2$. Il vient :
  $ cases(x^2 - y^2 = a, x^2 + y^2 = |zeta|^2 = |z| = sqrt(a^2 + b^2), 2x y = b) $

  Ce système donne facilement $x^2$ et $y^2$, donc 4 possibilités pour $(x,y)$, puis on sélectionne les deux bornes en utilisant que le signe de $x y$ est du signe de $b$.
]

#v(1em)
On cherche $x$ et $y$ tels que $(x+i y)^2 = 3 - 4i$. Ce qui équivaut à :
$ casesn(x^2-y^2 = 3, x^2 + y^2 = 5, 2 x y = -4) $
$ita("(1) + (2)")$ donne : $x^2 = 4$, puis $ita("(2)-(1)")$ donne $y^2 = 1$.
Et comme $x y$ est négatif, les solutions sont : $+-(2 - i)$

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

_Ne pas oublier d'apprendre ses formules trigonométriques._