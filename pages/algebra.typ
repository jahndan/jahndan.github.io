#import "../layout.typ": layout
#show: layout

#let yes = text(green, sym.checkmark)
#let no = text(red, sym.crossmark)

#show math.convolve: math.compose

#title[Whirlwind tour of abstract algebra]

_Basically a semester long algebra course gutted of its substance and rigor,
packed into a few days of coverage._

Set theory
- I've had it explained to me about 6 times, so I will proceed assuming you know
  most of the notation, _stop me and ask if you have questions_
- Cartesian product of sets: $A times B = { (a, b) | a in A, b in B }$, e.g. $RR^n$
- $S^+$ and $S^-$ contain positive/negative elements of $S$ (not including 0)
- $NN$ natural, $ZZ$ integers, $QQ$ rational, $RR$ real, $CC$ complex,
  $HH$ quaternion
- $ZZ_n = {0, 1, ..., n-1}$ are the first $n$ nonnegative integers
- Nonstandard: I'm defining $BB = ZZ_2 = {0, 1}$ as a "boolean" set

Algebraic structures $(G, *)$ in general
- a set of elements $G$
- equipped with closed binary operation $* : G^2 -> G$
We denote the application of the operation like this:
$ a * b = c wide a, b, c in G $
You should remember that it is nonetheless a function:
$ f : G^2 -> G "where" f(a, b) = c $

#text(0.8em)[
  In most contexts, mathematicians use multiplicative notation and simply write
  $a b$ instead of $a * b$. I define them with an abstract symbol first since
  additive groups look cursed with the multiplicative notation.

  In using $*$ for an unspecified operation, I'm attempting to emphasize that
  elements of groups correspond to geometric transformations, and that this
  operation is the _composition_ of those transformations.
]

Group axioms:
- Associativity: For all $a, b, c, in G$, we have $(a * b) * c = a * (b * c)$
- Identity: There is $e in G$, where $e * a = a = a * e$
- Invertibility: For all $a in G$, there is $b in G$, where $a * b = e = b * a$

#text(0.8em)[
  Note: I think it's typical to use $e$ for identity in the abstract
  definitions, but in practice you can just write $0$ for additive
  notation and $1$ for multiplicative notation.
]

Trivial proofs: identity is unique, and inverse is unique for each element.

Ex. Booleans with exclusive or: $(BB, xor)$
- identity: $0 in BB$, where $0 xor a = a = a xor 0$
- associative: $a xor (b xor c) = (a xor b) xor c$
- invertible: $0 xor 0 = 0$, $1 xor 1 = 0$ (both are their own inverse)

Ex. Cube roots of unity: ${1, e^(+j 2/3 pi), e^(-j 2/3 pi)}$, operation: $times$
- identity: $1$
- associative: complex multiplication is associative
- invertible:
  - identity is trivially invertible: $1 times 1 = 1$
  - inverses commute: $e^(+j 2/3 pi) times e^(-j 2/3 pi) = 1$
    - for this case, complex multiplication is commutative anyway
    - groups are not commutative in general, but you can prove associativity
      implies that left inverses and right inverses must be equal

Quick proof (optional):
- Suppose $b$ is the right inverse of $a$, that is, $a * b = e$
- Let $c$ be the right inverse of $b$, that is, $b * c = e$
- Necessarily, $c = e * c = a * b * c = a * e = a$
- So, $a$ is the _unique_ inverse of $b$ and vice versa
- And inverses _commute_: $(a * b) = e = (b * a)$

Ex. Modular arithmetic (clock analogy):
- $11 + 3 eq 14 eq.triple 2 thick (mod 12)$
- $11 + 3 - 3 eq.triple 2 - 3 thick ==> thick 11 eq.triple -1$
  - $11$ is the _additive inverse_ of $1$ in $ZZ_12$
  - Why? $12 - 1 eq.triple -1 thick (mod 12)$
  - What might this have to do with two's complement?

Two's complement as a particular case of modular arithmetic:
- Let $n = 2^k$ for $k$-bit integers
- We know how to represent positive integers in $ZZ_n$
- $a in ZZ_n$ and we want $-a eq.triple b$ where $b in ZZ_n$
- $a + b eq.triple 0 thick (mod n) -> a + b = 2^k $
  - This means $-1 eq.triple 2^k -1$, i.e. bit pattern of all 1s
- Invert the bits of $a$ to produce $macron(a) = -1 - a$
- Then, we add $1$ to get $1 + macron(a) = -a$

I'm calling these wraparound fractions $(F, plus.double)$:
- $F = [0, 1)$ and $plus.double$ is like addition but $x plus.double 1 = x$
- i.e. when it goes past $1$, it "wraps around" to $0$
- similar to "phase" (measured in $-pi$ to $pi$)
- use-case: golden ratio sequences for low-discrepancy sampling (pseudorandom)

What about our familiar number systems?
#table(
  align: center,
  columns: 4 * (1fr,),
  row-gutter: 2mm,

  $(NN, plus)$, $(ZZ, plus)$, $(QQ, plus)$, $(RR, plus)$,
  no, yes, yes, yes,

  table.cell(colspan: 4, none),

  $(ZZ, times)$, $(QQ, times)$, $(RR, times)$, $(CC, times)$,
  no, no, no, no,

  table.cell(colspan: 4, none),

  $(ZZ^+, times)$, $(QQ^+, times)$, $(RR^+, times)$, $(CC^+, times)$,
  no, yes, yes, yes,

  table.cell(colspan: 4, none),

  $(ZZ^plus.minus, times)$, $(QQ^plus.minus, times)$,
  $(RR^plus.minus, times)$, $(CC^plus.minus, times)$,
  no, yes,
  yes, yes,
)

Note: I'm defining nonstandard notation $S^plus.minus$ to mean the _nonzero_
elements of $S$, so that $(S^plus.minus, times)$ may be a multiplicative group.
