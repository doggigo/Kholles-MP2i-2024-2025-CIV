#import "@local/presets:0.1.0" : doc_aufranc
#import "@local/utils:0.1.0" : *
#import "@preview/mannot:0.2.2": markrect

#import "@preview/cetz:0.4.2" 
#import "@preview/cetz-plot:0.1.2"

#show: doc_aufranc.with(title:"Kholle 8",fontsize: 12pt, numbering: none)

= Questions de cours
== Domaines de définition et d'étude et transformations géométriques permettant de tracer le graphe de $x |-> sin^2(x)cos(3x)$ (Pratique 2)

#let f(x) = calc.sin(x)*calc.sin(x)*calc.cos(3*x)

_Voici le graphe de la fonction_
#cetz.canvas({
  import cetz.draw: *
  import cetz-plot: *

  set-style(axes: (
stroke: (dash: "dotted", paint: black),
x: (mark: (start: ">", end: ">"), padding: 1),
y: (mark: none),
tick: (stroke: black + 1pt),
  ))

  plot.plot(size: (10, 4), axis-style: "school-book", 
  x-format: plot.formats.multiple-of,
  x-tick-step: calc.pi/2,
  y-tick-step: none,
  {
  plot.add(f, domain: (-calc.pi, calc.pi ), line: "spline")
  })
})

#blocky-paragraph[
Soit $f : x |-> sin^2(x)cos(3x)$
- Domaine de définition : $RR$
- de période $2pi$ : On réduit le domaine d'étude à $[-pi,pi]$
- $pi$-anti-périodique ($sin(x+pi)$) : On le réduit encore à $display([-pi/2;pi/2])$ 
- Fonction paire : On a finalement un domaine d'étude réduit à : $D = display([0 ; pi/2])$
#v(.5em)
On va donc étudier la fonction sur D, puis la compléter par symétrie par rapport à $(0y)$ (on aura tracé sur $[-pi/2,pi/2]$), puis par la composée de translation de vecteur $(pi,0)$ et de la symétrie par rapport à $(0x)$ (on aura tracé sur $[-pi,pi]$), et enfin par translation de vecteurs $(2 pi, 0)$ afin de remplir tout $RR$.
]

== Théorème de la limite monotone et théorème de l'homéomorphisme
#smallcaps[Limite Monotone]
#context-block[
  Soit $f$ une fonction à valeurs réelles définie sur $]a,b[$ avec $a < b$. On suppose $f$ monotone.

  Alors $f$ admet des limites (finies ou pas) en $a$ et en $b$, et $f(]a,b[) subset ]lim_(x -> a^+) f(x), lim_(x -> b^-) f(x)[$, l'ordre des bornes dépendant du sens de monotonie de $f$.
]

#smallcaps[Théorème de l'homéomorphisme]
#context-block[
  Soit $f$ continue sur un intervalle $I$ de $RR$ à valeurs réelles.

  Alors $f$ est injective si, et seulement si, $f$ est strictement monotone.
  #v(.5em)
  Dans ce cas :
  - $f$ est bijective de $I$ sur $f(I)$
  - sa réciproque $f^-1$ est continue. (on dit que $f$ est un homéomorphisme),
  - les intervalles $I$ et $f(I)$ sont de même nature
  - les bornes de $f(I)$ sont les limites de $f$ aux extrémités de $I$
]

== Description des différentes branches infinies possibles à un graphe
#blocky-paragraph[
  - Si $f(x)$ tend vers $+-infinity$ quand $x -> x_0 in bar(I)$, le graphe admet une asymptote verticale d'équation $x = x_0$
  - Si $lim_(x -> +- infinity) = l$, le graphe admet une asymptote horizontale d'équation $y = l$
  - Si $f(x)$ tend vers $+infinity$ quand $x$ tend vers $+ infinity$, on étudie $x |-> f(x)/x$ quand $x -> + infinity$
    - si $f(x)/x$ tend vers $0$, le graphe admet une branche parabolique dans la direction $(0x)$ (horizontale)
    - si $f(x)/x$ tend vers $+-infinity$, le graphe admet une branche parabolique dans la direction $(0y)$ (verticale)
    - si $f(x)/x$ tend vers $a$ fini non-nul, on étudie $x |-> f(x) - a x$ :
      - si $f(x) - a x$ tend vers $b$ fini quand $x$ tend vers $+ infinity$, $y = a x + b$ est asymptote oblique
      - si $f(x) - a x$ tend vers $+- infinity$, le graphe admet une branche parabolique dans la direction $y = a x$
  - même terminologie quand $f(x)/x$ tend vers $- infinity$
]

== Définition de $ln$, énoncé des propriétés de morphisme et des croissances comparées
#smallcaps[Définition]
#context-block[
  La fonction $x |-> 1/x$ est continue sur $RR_+^*$. Son unique primitive qui s'annule en $1$ est appelée logarithme népérien et notée $ln$ :
  $ forall x in RR_+^*, #h(1em), ln(x) = integral_1^x (d t)/t $
  $ln$ est donc dérivable sur $RR_+^*$ et : $forall x in RR_+^*, display(ln'(x) = 1/x)$
]

#smallcaps[Propriétés]
#context-block[
  _#serif[Morphisme de groupes :]_

  $ln : RR_+^* -> RR$ est un morphisme de groupes, c'est-à-dire :
  $ forall (x,y) in (RR_+^*)^2, #h(2em) ln(x y) = ln(x)+ln(y) $
  En particulier, pour $x > 0, y > 0 "et" n in ZZ$ :
  $ ln(x/y) = ln(x) - ln(y) #h(1em) "et" #h(1em) ln(x^n) = n ln(x) $

  _#serif[Règle de croissances comparées :]_
  $ lim_(x -> + infinity) ln(x)/x = 0 #h(1em) "et" #h(1em) lim_(x->0^+) x ln(x) = 0 $
  (ln est négligeable devant $x |-> x$ au voisinage de $+ infinity$ 
  et, de même, négligeable devant $x-> 1\/x$ en $0^+$)
]

== Définition de l'exponentielle, énoncé des propriétés de morphisme et des croissances comparées
