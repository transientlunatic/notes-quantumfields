Free scalar field theory
************************

A scalar field associates a scalar with every point in a physical space.
The scalar may be a number or a physical quantity, and must be
coordinate invariant.

Scalar field theory constitutes the simplest possible field theory, with
a Lagrangian

.. math::

   \label{eq:15}
       \Lag = \half \partial_{\mu} \phi \partial^{\mu} \phi - \half m^2 \phi^2

The components of the Euler-Lagrange equations from the Lagrangian in
equation are

.. math::

   \begin{aligned}
         \pdv{\Lag}{\phi} &= -m^2 \phi \\
         \pdv{\Lag}{(\partial_{\mu} \phi)} &= \partial^{\mu} \phi \\
         \text{so \quad} \partial_{\mu} \qty(\pdv{\Lag}{(\partial_{\mu}
           \phi)}) &= \partial_{\mu} \partial^{\mu} \phi
       \end{aligned}

thus the Euler-Lagrange equation for this Lagrangian is a wave equation,
specifically, the Klein-Gordon equation.

.. math::

   \label{eq:kleingordonscalar}
     (\partial^2 + m^2) \phi = 0

This is the relativistic relation between energy and momentum—a
relativistic Schrödinger equation, and, when first postulated (in fact,
by Schrödinger) caused confusion due to the apparent negative energy
states in its solution.

On-shell and normalisation
==========================

We need to obey the on-shell condition, so

.. math::

   \label{eq:49}
     p^2_\mu = E^2 -\vec{p}^2 = m^2 \implies E = \pm \sqrt{\vec{p}^2 + m^2}

 and, in order to maintain normalisation we need to introduce a
normalisation factor into any integration. This has the form

.. math:: \nm{\vec{k}} = \frac{\dd[3]{k}}{(2 \pi)^3 2 E(\vec{k})}

 while being an odd-looking quantity is the covariant choice for
normalisation.

We can show that this is the covariant choice by considering a function
:math:`f(x)`, and then integrating it,

.. math::

   \begin{aligned}
     \int \nm{\vec{k}} f(k) &= \int  \nm{\vec{k}} \dd{E^2} \delta(E^2 - \vec{k}^2 - m^2) f(k) \\ &
   =  \int  \nm{\vec{k}} 2 E\dd{E} \delta(E^2 - \vec{k}^2 - m^2) f(k) \\
   &=  \int  \nm{\vec{k}} 2 \pi\delta(E^2 - \vec{k}^2 - m^2) f(k) \end{aligned}

where the :math:`\delta(E^2 - \vec{k}^2 - m^2)` condition represents the
requirement for the state to be located “on-shell”.

Plane-wave solutions of Klein-Gordon
====================================

By taking a plane wave solution we have the general form of the
potential being

.. math::

   \phi(x) = \int \nm{\vec{k}} \left(
         a(\vec{k}) \exp(- i k \vdot x) + a^{*}(\vec{k}) \exp(i k \vdot
         x) \right)

 Taking a plane wave solution of equation [eq:kleingordonscalar],

.. math::

   \phi \propto \exp(i k \vdot x) = \exp( i (k^0 t - \vec{k} \vdot
     \vec{x}))

.. math:: (k^0)^2 - \vec{k}^2 = m^2 \Longleftrightarrow    k^0 = \pm \sqrt{k^2 + m^2}

 where both the positive and the negative solutions are valid. Letting
:math:`E(k)= + \sqrt{k^2 + m^2}`, we have a general form for the
potential:

.. math::

   \label{eq:18}
       \phi(x) = \int \nm{\vec{k}} \left(
         a(-\vec{k}) e^{i\qty(E(\vec{k}) t - \vec{k} \vdot \vec{x})} +
         a^{*}(\vec{k}) e^{i\qty(E(\vec{k}) t - \vec{k} \vdot \vec{x})}
       \right)

 letting :math:`\vec{k} \to - \vec{k}` in the first integral,

.. math::

   \phi(x) = \int \nm{\vec{k}} \left(
         a(\vec{k}) \exp(- i k \vdot x) + a^{*}(\vec{k}) \exp(i k \vdot
         x) \right)

 We can make this look simpler by defining

.. math::

   \label{eq:50}
     e_k(x) = \nm{\vec{k}} \exp(- ik \vdot x)

 Giving us

.. math::

   \label{eq:51}
     \phi(x) = \int \qty( a(\vec{k}) e_k(x) + a^{*}(\vec{k}) e_k^{*}(x) )

The Energy Function and Hamiltonian
===================================

The energy momentum tensor is

.. math::

   \begin{aligned}
     \label{eq:19}
     \ten{T}{^{\mu}^{\nu}} &= \pdv{\Lag}{(\partial_{\mu}\phi)} \partial^{\nu} \phi - {\ten{g}{^{\mu}^{\nu}}}\Lag \\
   &= \partial^{\mu} \phi \partial^{\nu} \phi - {\ten{g}{^{\mu}^{\nu}}}\qty(\half \partial_{\rho} \phi \partial^{\rho} \phi - \half m^2 \phi )\end{aligned}

Then

.. math::

   \label{eq:20}
     \ten{T}{^{00}} = \partial^0 \phi \partial^0 \phi - 
        \half \qty( \partial_0 \phi \partial^0 \phi 
                  - \nabla \phi \vdot \nabla \phi
                  - m^2 \phi  )

So the Hamiltonian is

.. math::

   \begin{aligned}
     \label{eq:21}
     H &= \int \ten{T}{^{00}} \dd[3]{x} \nonumber\\
    &= \half \int \qty( (\partial_0 \phi)^2 + (\nabla \phi)^2 + m^2\phi^2 ) \dd[3]{x}\end{aligned}

 This works for a classical theory, but in quantum-mechanical theories
we require :math:`H` to be an operator, however, we can’t simply convert
it into an operator, we also need to turn the fields into operators.

Second Quantisation
===================

The second quantisation is the process of turning fields into operators,
as opposed to the approach of the first quantisation where observables
are made into operators.

In order to do this we define the canonically conjugate momentum

.. math:: \pi(x) = \pdv{\Lag}{(\partial_0 \phi)} = \partial_0 \phi(x)

So we can postulate that :math:`\phi` and :math:`\pi` are operators
which satisfy the equal-time commutation relations

.. math::

   \begin{aligned}
     \comm{\Op{\phi}(\vec{x}, t)}{\Op{\pi} (\vec{x}, t)} &= i \delta^3(\vec{x} - \vec{y}) \\
   \comm{\Op{\phi}(\vec{x}, t)}{\Op{\phi}(\vec{y}, t)} &= \comm{\Op{\pi}(\vec{x}, t)}{\Op{\pi}(\vec{y}, t)} = 0\end{aligned}

This doesn’t change the Klein-Gordon equation, although it now acts like
an operator, so

.. math::

   \label{eq:22}
     \Op{\phi}(\vec{x}) = \int \qty(\Op{a}(\vec{k}) e_k + \hcon{\Op{a}}(\vec{k}) e^{*}_{k})

where the quantities :math:`\Op{a}` and :math:`\hcon{\Op{a}}` are now
operators. The corresponding equation for :math:`\pi` is

.. math::

   \label{eq:23}
     \Op{\pi} (x) = \partial_0 \Op{\phi}(x) = 2i \int E(k) \qty( - \Op{a} (\vec{k}) e_k + \hOp{a}(\vec{k}) e^{*}_k )

Creation and Annihilation Operators
===================================

We can find the coefficients :math:`\Op{a}` and :math:`\hOp{a}` can be
found through an inverse Fourier transform. For :math:`\Op{\phi}`,

.. math::

   \begin{aligned}
   \int & \dd[3]{x}  \ \Op{\phi} \ e^{-ik \vdot x} \\ 
        & =  \int \nm{k'}   \bigg( \Op{a}(\vec{k}') \int \dd[3]{x} e^{-i (k+k') \vdot x}   \\ 
        & \qquad \qquad \quad+ \hOp{a}(\vec{k}') \int \dd[3]{x} e^{-i(k'-k) \vdot x} \bigg) \\[1em] 
        & =  \int \frac{\dd[3]{k'}}{2 E(\vec{k})} \bigg(\Op{a}(\vec{k}') \delta^3(\vec{k} + \vec{k}') e^{-i (E(\vec{k}) - E(\vec{k}'))t}  \\
        & \qquad \qquad \quad+  \hOp{a}(\vec{k}') \delta^3(\vec{k}' - \vec{k}) e^{i(E(\vec{k}') - E(\vec{k}))t} \bigg) \\ 
        & = \frac{1}{2 E(\vec{k})} \Big(\Op{a}(-\vec{k}) e ^{-i2E(\vec{k})t} + \hOp{a}(\vec{k}) \Big)\end{aligned}

 and for :math:`\Op{\pi}`,

.. math::

   \int \dd[3]{x} \Op{\pi}(x) e^{-i k \vdot x} = \frac{i}{2}
      \qty( -\Op{a}(-\vec{k}) e^{-i 2 E(\vec{k})t} + \hOp{a}(\vec{k}) )

In each case using the definition of the :math:`\delta`-function, and

.. math::

   e^{i(k' - k) \vdot x} = e^{-i (\vec{k}' - \vec{k}) \vdot x}
                          e^{i \qty( E(\vec{k}') - E(\vec{k}) ) t}

So we now have

.. math::

   \begin{aligned}
   \label{eq:25}
     \int \dd[3]{x} \qty[ E(\vec{k}) \Op{\phi}(x) - i \Op{\pi}(x) ]
                    e^{-i k \vdot x} &= \hOp{a}(\vec{k}) & \\
   \label{eq:26}
     \int \dd[3]{x} \qty[ E(\vec{k}) \Op{\phi}(x) + i \Op{\pi}(x) ]
                    e^{-i k \vdot x} &= \Op{a}(-\vec{k}) e^{-2 i E(\vec{k}) t}\end{aligned}

Equation ([eq:26]) is in need of some further manipulation; we split the
space and the time components, so

.. math:: \int \qty[ E(\vec{k}) \Op{\phi}(x) + i \Op{\pi}(x)] e^{i \vec{k} \vdot \vec{x}} e^{-i E(\vec{k}) t} = a(-k) e^{-2i E(\vec{k} t)}

 Then, multiplying by :math:`\exp(2 i E(\vec{k}) t)`,

.. math:: a(-k) = \int \qty[ E(\vec{k}) \Op{\phi}(x) + i \Op{\pi}(x)] e^{i \vec{k} \vdot \vec{x}} e^{2 i E(\vec{k}) t}

 and replacing :math:`\vec{k} \to - \vec{k}`,

.. math::

   \begin{aligned}
      \label{eq:28}
       \Op{a}(\vec{k}) &= \int \qty[ E(\vec{k}) \Op{\phi} + i \Op{\pi}(x) ] e^{i k \vdot x} \\
      \label{eq:29}
       \hOp{a}(\vec{k}) &= \int \qty[E(\vec{k}) \Op{\phi} - i \Op{\pi}(x) ] e^{-i k \vdot x}
     \end{aligned}

Which are the annihilation ([eq:28]) and creation ([eq:29]) operators.

The commutators of these quantities are

.. math::

   \label{eq:33}
       \comm{\Op{a}(\vec{k})}{\hOp{a}(\vec{p})} =  (2 \pi)^3 2 E(\vec{k}) \delta^3(\vec{k} - \vec{p})

.. math::

   \label{eq:32}
       \comm{\Op{a}(\vec{k})}{\Op{a}(\vec{p})} = 0

.. math::

   \label{eq:52}
       \comm{\hOp{a}(\vec{k})}{\hOp{a}(\vec{p})} = 0

.. math::

   \comm{\Op{a}(\vec{k})}{\hOp{a}(\vec{p})} 
       &= \int \dd[3]{x} \int \dd[3]{y} \qty( -i E(\vec{k}) \comm{\Op{\phi}}{\Op{\pi}}
       -i E(\vec{p}) \comm{\Op{\pi}}{\Op{\phi}}) e^{i(k \vdot x - p \vdot y)} \nonumber \\
       &\quad= \int \dd[3]{x} \int \dd[3]{y} \qty( E(\vec{k} ) \delta^3(\vec{x} - \vec{y}) 
       + E(\vec{p}) \delta^3(\vec{x} - \vec{y}) )
       e^{i (k \vdot x - p \vdot y)} \nonumber\\
       &\quad= \int \dd[3]{x} \qty( E(\vec{k}) + E(\vec{p}) ) e^{i (k-p) \vdot x} \nonumber\\
       &\quad = (2 \pi)^3 2 E(\vec{k}) \delta^3(\vec{k} - \vec{p})

.. math::

   \begin{aligned}
       \comm{\Op{a}(\vec{k})}{\Op{a}(\vec{p})}
       & = \int \dd[3]{x} \int \dd[3]{y} \qty( -i E(\vec{k}) \comm{\Op{\phi}}{\Op{\pi}}
       -i E(\vec{p}) \comm{\Op{\phi}}{\Op{\pi}})
       e^{i(k \vdot x - p \vdot y)} \nonumber \\
       &\quad = \int \dd[3]{x} \int \dd[3]{y} \qty( E(\vec{k} ) \delta^3(\vec{x} - \vec{y}) 
       - E(\vec{p}) \delta^3(\vec{x} - \vec{y}) )
       e^{i (k \vdot x - p \vdot y)} \nonumber\\
       &\quad = \int \dd[3]{x} \qty( E(\vec{k}) - E(\vec{p}) ) e^{i (k-p) \vdot x} \nonumber\\
       &\quad = (2 \pi)^3 \qty( E(\vec{k}) - E(\vec{p}) ) \delta^3(\vec{k} - \vec{p}) \nonumber\\
       &\quad = 0
     \end{aligned}

The Energy Operator
===================

Returning to the Hamiltonian, which is a conserved quantity,

.. math::

   \label{eq:24}
     \Op{H} = \half \int \qty( \Op{\pi}^2 +(\nabla \phi)^2+m^2 \Op{\phi}^2)

and then substituting the operators from above (see derivation
[deriv:ham]),

.. math::

   \label{eq:27}
     \Op{H} = \half \int \nm{k} E(\vec{k}) \qty[ \Op{a}(\vec{k}) \hOp{a}(\vec{k}) + \hOp{a}(\vec{k}) \Op{a}(\vec{k})]

This can be compared to the quantum harmonic oscillator, where

.. math::

   \label{eq:31}
     \Op{H} = \half \hbar \omega ( \Op{a} \hOp{a} + \hOp{a} \Op{a})

We can then postulate a lowest energy state, :math:`\ket{0}`, the
vacuum, such that

.. math::

   \label{eq:34}
     \Op{a}(\vec{k}) \ket{0} = 0

The energy of the vacuum state is then

.. math::

   \begin{aligned}
    E_0 &= \ev{\hOp{H}}{0} \\ &= \frac{1}{4} \int \frac{\dd[3]{k}}{(2 \pi)^3} \qty( \ev{\Op{a}(\vec{k}) \hOp{a}(\vec{k})}{0} + \ev{\hOp{a}(\vec{k}) \Op{a}(\vec{k})}{0}) \end{aligned}

 The second term vanises, as :math:`\Op{a}(\vec{k}) \ket{0} = 0`, and
the first term is

.. math::

   \begin{aligned}
    \ev{\Op{a}(\vec{k}) \hOp{a}(\vec{k})}{0} &=  \ev{(2 \pi)^3 2 E(\vec{k}) \delta^3(\vec{k}-\vec{k}) + \hop{a}(\vec{k})\Op{a}(\vec{k})}{0}\\
   &= (2 \pi)^3 2 E(\vec{k}) \delta^3(0)\end{aligned}

 and so

.. math:: E_0 = \half \delta^3(0) \int \dd[3] k E(\vec{k}) = \infty

[t] Since

.. math::

   \begin{aligned}
   \Op{\pi} (x) &=  \frac{i}{2} \int \frac{\dd[3]{k}}{(2 \pi)^3} \qty( - \Op{a} (\vec{k}) e^{-ik \vdot x} + \hOp{a}(\vec{k}) e^{ik \vdot x} ) &
   \Op{\phi}(\vec{x}) &= \int \frac{\dd[3]{k}}{(2 \pi)^3 2 E(\vec{k}) }
                         \qty(\Op{a}(\vec{k}) e^{-ik \vdot x} + \hcon{\Op{a}}(\vec{k}) e^{i k \vdot x}) \end{aligned}

.. math::

   \nabla \Op{\phi}(\vec{x}) &= i \int \frac{\dd[3]{k}}{(2 \pi)^3 2 E(\vec{k}) }
                        \vec{k} \qty(\Op{a}(\vec{k}) e^{-ik \vdot x} - \hcon{\Op{a}}(\vec{k}) e^{i k \vdot x})

 then

.. math::

   \begin{aligned}
     \Op{H} &= \half \int \bigg( \Op{\pi}^2 + (\nabla \Op{\phi})^2 + m^2 \Op{\phi}^2 \bigg) \dd[3]{x} \\
      &= \half \int \dd[3]{x} \nm{k} \nm{p} 
      \bigg(  (-E(\vec{k})E(\vec{p}) - \vec{k} \vdot \vec{p} +m^2) \Op{a}(\vec{k}) \Op{a}(\vec{k}) e^{-i (k + p) \vdot x} 
      + (-E(\vec{k})E(\vec{p}) - \vec{k} \vdot \vec{p} +m^2) \Op{a}(\vec{k}) \Op{a}(\vec{k}) e^{ i (k + p) \vdot x} \\
      &\quad\qquad+ (E(\vec{k})E(\vec{p}) - \vec{k} \vdot \vec{p} +m^2) \Op{a}(\vec{k}) \Op{a}(\vec{k}) e^{ -i (k - p) \vdot x} 
      + (E(\vec{k})E(\vec{p}) - \vec{k} \vdot \vec{p} +m^2) \Op{a}(\vec{k}) \Op{a}(\vec{k}) e^{i (k - p) \vdot x} \bigg)\end{aligned}

 since :math:`E^2 = \vec{k}^2 + m^2`,

.. math::

   \begin{aligned}
     \phantom{\Op{H}}&= \half \int \dd[3]{x} { \frac{\dd[3]{k}}{(2 \pi)^3 2 E(\vec{k})}}  \frac{\dd[3]{p}}{2E(\vec{p})} 
        \bigg(  (-E(\vec{k}) + \vec{k} + m^2) \Op{a}(\vec{k}) \Op{a}(\vec{k}) \exp(-2i E(\vec{p})t) \delta^3(\vec{k} + \vec{p}) \\
        &\qquad+ (-E(\vec{k}) + \vec{k} + m^2) \Op{a}(\vec{k}) \Op{a}(-\vec{k}) \exp(-2i E(\vec{p})t) \delta^3(\vec{k} + \vec{p}) 
        + (E(\vec{k}) + \vec{k} + m^2) (\Op{a}(\vec{k}) \Op{a}(\vec{k}) + \hOp{a}(\vec{k}) \Op{a}(\vec{k}) ) \delta^3(\vec{k} - \vec{p}) \bigg)\end{aligned}

 The first two terms cancel using the relation
:math:`E(\vec{k}) = \sqrt{\vec{k}^2 +m^2}`.

This result isn’t really surprising, since the field was constructed as
the infinite sum over harmonic oscillators. Given that the ground state
of an oscillator has non-zero energy the vacuum energy will pick up an
infinite number of such terms.

To manage this we introduce the concept of normal ordering.

An exception (perhaps?) here is the energy-momentum tensor in general
relativity where we expect the vacuum energy to show up as a
cosmological constant.

Normal Ordering
===============

Normal ordering is the process by which the vacuum energy is subtracted
from all other energies in the theory. In a normally ordered product all
of the annihilation operators are moved to the right of all of the
creation operators, so

.. math::

   \label{eq:30}
     \normbracket{ \Op{a}(\vec{k}) \hOp{a}(\vec{k})} := \hOp{a}(\vec{k}) \Op{a}(\vec{k})

 and so

.. math::

   \begin{aligned}
     \nOp{H} &= \half \int \nm{k} E(\vec{k}) \qty( \normbracket{ \Op{a}(\vec{k}) \hOp{a}(\vec{k})} + \normbracket{ \hOp{a}(\vec{k}) \Op{a}(\vec{k})}) \\
   &= \int \nm{k} E(\vec{k}) \hOp{a}(\vec{k}) \Op{a}(\vec{k})\end{aligned}

 which makes the vacuum energy

.. math:: E_0 = \ev{\nOp{H}}{0} = 0

 and the energy of any state
:math:`\ket{\vec{k}} = \hOp{a}(\vec{k}) \ket{0}` is then

.. math::

   \begin{aligned}
       \nOp{H} \ket{\vec{k}} &= \half \int \frac{\dd[3]{\vec{p}}}{(2\pi)^3}  \hOp{a}(\vec{p}) \Op{a}(\vec{p}) \hOp{a}(\vec{k}) \ket{0} \nonumber\\
   &= \half \int \frac{\dd[3]{\vec{p}}}{(2\pi)^3}  \hOp{a}(\vec{p}) \comm{\Op{a}(\vec{p})}{\hOp{a}(\vec{k})} \ket{0} \nonumber\\
   &= \half \int \frac{\dd[3]{\vec{p}}}{(2\pi)^3}  \hOp{a}(\vec{p}) (2 \pi)^3 2 E(\vec{p}) \delta^3(\vec{k} - \vec{p}) \ket{0} \nonumber\\
   &= \int \dd[3]{p} E(\vec{p}) \delta^3(\vec{k} - \vec{p}) \hOp{a}(\vec{p}) \ket{0} \nonumber\\
   \nOp{H} \ket{\vec{k}} &= E(\vec{k}) \ket{\vec{k}}
     \end{aligned}

The Momentum Operator
=====================

The momentum operator can be approached in the same way as the energy
operator, returning to the enery-momentum tensor.

.. math::

   \label{eq:35}
     \ten{T}{^{0i}} = \pdv{\Lag}{(\partial_0 \Op{\phi})} \partial^i \Op{\phi} - \ten{g}{^{0i}} \Lag = \Op{\pi} \partial^i \Op{\phi}

then the momentum operator is

.. math::

   \label{eq:36}
     \Op{\vec{P}} = \half \int \nm{k} \vec{k} \qty( \Op{a}(\vec{k}) \hOp{a}{\vec{k}} + \hOp{a}(\vec{k}) \Op{a}{\vec{k}} )

 when combined with the Hamiltonian we can form the four-momentum
operator,

.. math::

   \label{eq:37}
     \Op{P} = \half \int \nm{k} k^{\mu} \qty( \Op{a}(\vec{k}) \hOp{a}{\vec{k}} + \hOp{a}(\vec{k}) \Op{a}{\vec{k}} )

.. math::

   \begin{aligned}
       \Op{\vec{P}} & = - \int \Op{\pi} \nabla \Op{\phi} \dd[3]{x}   \\ 
                    & = \half \int \dd[3]{x} \frac{\dd[3]{k}}{(2\pi)^3} { \frac{\dd[3]{p}}{(2 \pi)^3 2 E(\vec{p})}} \qty( 
                            - \Op{a}(\vec{k}) \exp(-i k \vdot x) + \hOp{a}(\vec{k}) \exp(i k \vdot x) ) \vec{p} 
                              \qty( \Op{a}(\vec{p}) \exp(-i p \vdot x) - \hOp{a}(\vec{p}) \exp(i p \vdot x) 
                         )                                                               \\
                    & = \half \int \dd[3]{x} \frac{\dd[3]{k}}{(2\pi)^3}  \frac{\dd[3]{p}}{2 E(\vec{p})} \ \vec{p} \bigg(  
                            - \Op{a}(\vec{k}) \Op{a}(\vec{p}) \delta^3(\vec{k}+\vec{p}) \exp[ - i (E(\vec{k}) + E(\vec{p}) )t] 
                            + \Op{a}(\vec{k}) \hOp{a}(\vec{p}) \delta^3(\vec{k}-\vec{p}) \exp[ - i (E(\vec{k}) - E(\vec{p}) )t] \\
                    &\qquad + \hOp{a}(\vec{k}) \Op{a}(\vec{p}) \delta^3(\vec{k}-\vec{p}) \exp[ i (E(\vec{k}) - E(\vec{p}) )t] 
                            - \hOp{a}(\vec{k}) \hOp{a}(\vec{p}) \delta^3(\vec{k}+\vec{p}) \exp[ i (E(\vec{k}) + E(\vec{p}) )t] 
                        \bigg)  \\
                    & = \half { \frac{\dd[3]{k}}{(2 \pi)^3 2 E(\vec{k})}} \vec{k}  \qty( 
                              \Op{a}(\vec{k}) \Op(-\vec{k}) e^{-2i E(\vec{k})t} 
                            + \Op{a}(\vec{k}) \hOp{a}(\vec{k}) 
                            + \hOp{a}(\vec{k}) + \Op{a}(\vec{k}) 
                            + \hOp{a}(\vec{k}) \hOp{a}(-\vec{k}) e^{2i E(\vec{k}) t} 
                         ) 
     \end{aligned}

The first and last terms are antisymmetric in their argument, i.e. in
:math:`\vec{k} \to - \vec{k}`, so they cancel, leaving equation

Multiparticle States
====================

Quantum field theory allows the description of multiparticle states, for
example,
:math:`\ket{\vec{k}_1, \vec{k}_2} = \hOp{a}(\vec{k}_2) \hOp{a}(\vec{k}_1) \ket{0}`,
which is a two particle state. We now have

.. math::

   \label{eq:38}
     \nOp{H} \ket{\vec{k}_1, \vec{k}_2} = \qty( E(\vec{k}_1) + E(\vec{k}_2) ) \ket{\vec{k}_1, \vec{k}_2}

The multiparticle state’s ket is symmetric,

.. math:: \ket{\vec{k}_1, \vec{k}_2} = \hOp{a}(\vec{k}_2) \hOp{a}(\vec{k}_1) \ket{0} =  \hOp{a}(\vec{k}_1) \hOp{a}(\vec{k}_2) \ket{0} =  \ket{\vec{k}_2, \vec{k}_1}

 and it is possible to define another operator, :math:`\Op{N}`, the
number operator, which gives a count of the number of particles:

.. math::

   \label{eq:39}
     \Op{N} = \int \nm{k} \hOp{\vec{k}} \Op{\vec{k}}

 such that for the number of particles :math:`n`,

.. math:: \Op{N}  \ket{\vec{k}_1, \dots, \vec{k}_n} = n  \ket{\vec{k}_1, \dots, \vec{k}_n}

.. math::

   \begin{aligned}
     \nOp{H} & \ket{\vec{k}_1, \vec{k}_2} = \half \int \frac{\dd[3]{p}}{(2 \pi)^3} \hOp{a}(\vec{p}) \Op{a}(\vec{p}) \hOp{a}(\vec{k}_2) \hOp{a}(\vec{k}_1) \ket{0}  \\
   &= \half \int \frac{\dd[3]{p}}{(2 \pi)^3} \hOp{a}(\vec{p}) \qty( \comm{\Op{a}(\vec{p})}{\hOp{a}(\vec{k}_2)} + \hOp{a}(\vec{k}_2) \Op{a}(\vec{p}) \hOp{a}(\vec{k}_1) \ket{0} ) \\
   &= E(\vec{k}_2) \hOp{a}(\vec{k}_2) \hOp{a}(\vec{k}_1) \ket{0} \\ &\qquad+ \half \int \frac{\dd[3]{p}}{(2 \pi)^3} \hOp{a}(\vec{p}) \hOp{a}(\vec{k}_2)  \comm{\Op{a}(\vec{p})}{\hOp{a}(\vec{k}_1)} \ket{0} \\
   &= E(\vec{k}_2) \hOp{a}(\vec{k}_2) \hOp{a}(\vec{k}_1) \ket{0} + E(\vec{k}_1) \hOp{a}(\vec{k}_1) \hOp{a}(\vec{k}_2) \ket{0} \\
   &= \qty(E(\vec{k}_1) + E(\vec{k}_2) ) \ket{\vec{k}_1, \vec{k}_2}\end{aligned}

Complex Scalar Fields
=====================

If we allow the field :math:`\Op{\phi}(x)` to be complex-valued the
Lagrangian for the theory becomes

.. math::

   \label{eq:40}
     \Lag = \partial_{\mu} \Op{\hcon{\phi}} \partial^{\mu} \Op{\phi} - m^2 \Op{\hcon{\phi}} \Op{\phi}

 There are now two Euler-Lagrange equations, and a Klein-Gordon equation

.. math::

   \label{eq:41}
     \qty( \partial^2 +m^2 ) \Op{\phi} = 0

 Similar to the real field there are general solutions of the form

.. math::

   \begin{aligned}
       \label{eq:42}
       \Op{\phi}(x) &= \int \nm{k} \qty( \Op{a}(\vec{k}) e^{-i k \vdot x} + \hOp{b}(\vec{k}) e^{i k \vdot x} )\\
       \hOp{\phi}(x) &= \int \nm{k} \qty( \hOp{a}(\vec{k}) e^{i k \vdot x} + \Op{b}(\vec{k}) e^{-i k \vdot x} )
     \end{aligned}

The components of the Euler-Lagrange equation for the
:math:`\hcon{\phi}(x)` field are

.. math::

   \begin{aligned}
       \pdv{\Lag}{\hOp{\phi}} &= -m^2 \Op{\phi}, & \pdv{\Lag}{(\partial_{\mu} \hOp{\phi})} &= \partial^{\mu} \Op{\phi} 
     \end{aligned}

.. math:: \text{so} \quad \partial_{\mu} \qty(  \pdv{\Lag}{(\partial_{\mu} \hOp{\phi})} ) = \partial_{\mu} \partial^{\mu} \Op{\phi}

So there are two sets of creation and annihilation operators, and a new
set of commutation relations,

.. math::

   \begin{aligned}
     \comm{\Op{a}(\vec{k})}{\Op{a}(\vec{p})} & = \comm{\Op{a}(\vec{k})}{\Op{b}(\vec{p})}    && = \comm{\Op{b}(\vec{k})}{\Op{b}(\vec{p})}    = 0 \\
   \comm{\hOp{a}(\vec{k})}{\hOp{a}(\vec{p})} & = \comm{\hOp{a}(\vec{k})}{\hOp{b}(\vec{p})}  && = \comm{\hOp{b}(\vec{k})}{\hOp{b}(\vec{p})}   =0 \\
   & \quad\ \comm{\Op{a}(\vec{k})}{\hOp{a}(\vec{p})}  && = \comm{\hOp{a}(\vec{k})}{\Op{b}(\vec{p})}   = 0 \\
    \comm{\Op{a}(\vec{k})}{\hOp{a}(\vec{p})} &= \comm{\Op{b}(\vec{k})}{\hOp{b}(\vec{p})} && = (2 \pi)^3 2 E(\vec{k}) \delta^3(\vec{k}-\vec{p})
   \end{aligned}

 This also means the four-momentum operator is

.. math::

   \begin{aligned}
     \label{eq:43}
     \Op{P}^{\mu} = \half \int \nm{k} k^{\mu} \bigg( &\Op{a}(\vec{k}) \hOp{a}(\vec{k}) + \hOp{a}(\vec{k}) \Op{a}(\vec{k}) \nonumber \\+& \Op{b}(\vec{k}) \hOp{b} (\vec{k}) + \hOp{b}(\vec{k}) \Op{b}(\vec{k}) \bigg)\end{aligned}

 and its normal-ordered counterpart is

.. math::

   \label{eq:44}
     \normbracket{\Op{P}^{\mu}} = \int \nm{k} k^{\mu} \qty( \hOp{a}(\vec{k}) \Op{a}(\vec{k}) + \hOp{b}(\vec{k}) \Op{b}(\vec{k}) )

 We can operate on the example state

.. math::

   \begin{aligned}
   \normbracket{\Op{P}^{\mu}} \hOp{a}(\vec{k}_2)\hOp{a}(\vec{k}_1) \ket{0} &= ( k_1^{\mu} + k_2^{\mu} ) \hOp{a}(\vec{k}_2) \hOp{a}(\vec{k}_1),  
    \\
   \normbracket{\Op{P}^{\mu}} \hOp{a}(\vec{k}_2)\hOp{b}(\vec{k}_1) \ket{0} &= ( k_1^{\mu} + k_2^{\mu} ) \hOp{a}(\vec{k}_2) \hOp{b}(\vec{k}_1) \end{aligned}

 While this looks more complicated than the real scalar field it can be
expressed in a way which is more straight-forward.

.. math::

   \label{eq:11}
     \Op{\phi}(x) = \frac{1}{\sqrt{2}} \qty( \Op{\phi_1}(x) + i \Op{\phi_2}(x) )

this gives a Lagrangian

.. math::

   \Lag = \half \partial_{\mu} \Op{\phi_1} \partial^{\mu} \Op{\phi_1} 
   - \half m^2 \Op{ \phi_1 }^2  + \half \partial_{\mu} \Op{\phi_2} \partial^{\mu} \Op{\phi_2}
   - \half m^2 \Op{ \phi_2 }^2

 The model is now just two real scalar fields, and the momentum is the
sum

.. math:: \Op{P}^{\mu} = \Op{P}_1^{\mu} + \Op{P}^{\mu}_2

.. math:: \Op{P}^{\mu}_i = \half \int { \frac{\dd[3]{k}}{(2 \pi)^3 2 E(\vec{k})}} k^{\mu} \qty( \Op{a}_i(\vec{k}) \hOp{a}_i(\vec{k}) + \hOp{a}_i(\vec{k}) \Op{a}_i(\vec{k})  )

 with

.. math:: \Op{a} = \frac{1}{\sqrt{2}} (\Op{a}_1 + i \Op{a}_2), \qquad \Op{b} = \frac{1}{\sqrt{2}} (\Op{a}_1 - i \Op{a}_2)

Charge Conservation
===================

The complex scalar Lagrangian has a symmetry under
:math:`\Op{\phi}(x) \to
e^{i \theta} \Op{\phi}(x)`, provided :math:`\theta^{*} \to \theta`, and
:math:`\partial_{\mu} \theta = 0`,

.. math::

   \begin{aligned}
     \Lag &= \partial_{\mu} \hOp{\phi} \partial^{\mu} \Op{\phi} - m^2 \hOp{\phi} \Op{\phi} 
     \\& \to 
     \partial_{\mu} \hOp{\phi} e^{-i \theta} e^{i \theta} \partial^{\mu} \Op{\phi} - m^2 \hOp{\phi} e^{-i \theta} e^{i \theta} \Op{\phi} = \Lag\end{aligned}

 According to Noether’s Theorem there should be a conserved current
associated with this symmetry; the infinitessimal transformation is
:math:`\Op{\phi}(x) \to \Op{\phi} + i \theta \Op{\phi}(x)`, so

.. math::

   \Op{\jmath}^{\mu} = -i \pdv{\Lag}{(\partial_{\mu} \Op{\phi})}
   \Op{\phi} + i \pdv{\Lag}{(\partial_{\mu} \hOp{\phi})} = -i \qty(
   \Op{\phi} \partial^{\mu} \hOp{\phi} - \hOp{\phi} \partial^{\mu}
   \Op{\phi})

 This conserved current gives rise to a conserved charge, which is the
time component:

.. math::

   \label{eq:12}
     \Op{Q} = - \int i \qty( \Op{\phi} \hOp{\pi} - \hOp{\phi} \Op{\pi} ) \dd[3]{x}

 The normal ordered operator is

.. math::

   \begin{aligned}
   \nOp{Q} &= \int \nm{k} \qty( \hOp{a}(\vec{k}) \Op{a}(\vec{k}) - \hOp{b}(\vec{k}) \Op{b}(\vec{k}) ) \\
   &= \Op{N_a} - \Op{N_b}\end{aligned}

 thus we have

.. math:: \comm{ \nOp{Q} }{ \hOp{a} } = \hOp{a}, \qquad \comm{ \nOp{Q} }{ \hOp{b} } = - \hOp{b}

 The two species can be distinguished by eigenvalues of :math:`\nOp{Q}`,

.. math:: \nOp{Q} \hOp{a} \ket{0} = \hOp{a} \ket{0} \qquad \text{particle $a$ has a positive charge,}

.. math::

   \nOp{Q} \hOp{b} \ket{0} = - \hOp{b} \ket{0} \qquad \text{particle
     $b$ has a negative charge.}

 This allows us to interpret :math:`b` as the antiparticle of :math:`a`.

The Heisenberg Picture
======================

Notice that everything so far is in the Heisenberg picture; the
operators are time-dependent. Here

.. math::

   \begin{aligned}
     \dd_t{} \Op{\phi}(x) &= i \comm{ \Op{H} }{ \Op{\phi}(x) } = \Op{\pi}(x) \\
     \dd_t{} \Op{\pi}(x) &= i \comm{ \Op{H} }{ \Op{\pi}(x) } = \nabla^2 \Op{\phi}(x) - m^2 \Op{\phi}\end{aligned}

 which is the equation of motion, the Klein-Gordon equation. Similarly
the states are time independent.

Causality
=========

Our original postulate was that the field operators satisfy same-time
commutation relations, for a scalar field, e.g.

.. math::

   \begin{aligned}
     \comm{ \Op{\phi}(\vec{x}, t) }{ \Op{\pi} (\vec{y}, t) } &= i \delta^3(\vec{x} - \vec{y}) \\
     \comm{ \Op{\phi}(\vec{x}, t) }{ \Op{\phi}(\vec{y}, t) } &= \comm{ \Op{\pi}(\vec{x}, t) }{ \Op{\pi}(\vec{y}, t) } = 0\end{aligned}

 If, however, the times are allowed to be different we must consider
causality. Under a Lorentz transformation space-like separations remain
space-like, and the commutator
:math:`\comm{\Op{\phi}(\vec{x})}{\Op{\phi}(\vec{y})}` is also Lorentz
invariant, since its operators are. Thus, if the commutator is zero in
one frame it must be zero in all frames. The same argument holds for
commutators involving :math:`\Op{\phi}` and :math:`\Op{\pi}`.

The Propagator
==============

We are left with the conundrum of what the amplitude of a particle
propagating from a point :math:`y` to :math:`x` is; to do this we
project the inital state, :math:`\Op{\phi}(y) \ket{0}` onto the final
state, :math:`\Op{\phi}(x) \ket{0}`. For the real field this is

.. math::

   \begin{aligned}
     D(x-y) &= \bra{0} {\Op{\phi}(x) \Op{\phi}(y)} \ket{0} \\
            &= \int \nm{k} \nm{p} \bra{0} \Op{a}(\vec{k}) \hOp{a}(\vec{p}) \ket{0} e^{-i (k \vdot x - p \vdot y)} \\
            &= \int \nm{k} e^{-ik \vdot(x-y)}\end{aligned}

 This amplitude is the propagator of the theory; for a space-like
:math:`x-y` with :math:`x^0 - y^0 = 0` this becomes

.. math::

   \label{eq:13}
     D(x-y) \approx e^{-m |\vec{x} - \vec{y}|}

 Notably the amplitude is non-zero outside the light-cone, however.
Looking at the commutator

.. math::

   \begin{aligned}
      \comm{\Op{\phi}(x)}{\Op{\phi}(y)} &= \int \nm{k} \nm{p}
                                             \bigg( \comm{\Op{a}(\vec{k})}{\hOp{a}(\vec{p})} e^{i (k \vdot x - p \vdot y)}
                                                 \\ & \qquad+ \comm{\hOp{a}(\vec{k})}{\Op{a}(\vec{p})} e^{i (k \vdot x - p \vdot y)} \bigg)\\
                                        &= \int \nm{k} \qty( e^{-ik \vdot(x-y)} - e^{ik \vdot (x-y)}) \\
                                        &= D(x-y) - D(y-x)
    \end{aligned}

 Again we see that this commutator is zero for space-like separations;
if :math:`x-y` is space-like then there is no well-defined concept of
which happened first; it is always possible to choose a frame where
:math:`x` happens before :math:`y`, and vice-versa. As such we need to
add the contribution to the amplitude for travelling in each direction,
and these cancel.

In the complex scalar field the amplitude for a particle travelling
:math:`x` to :math:`y` cancels with that of an antiparticle travelling
from :math:`y` to :math:`x`.

The Feynman Propagator
----------------------

The Feynman propagator is defined as

.. math::

   \label{eq:14}
   \Delta~F (x-y) = 
   \begin{cases}
     \bra{0} \Op{\phi}(x) \Op{\phi}(y) \ket{0} \quad \text{for} \quad x^0 > y^0 \\
     \bra{0} \Op{\phi}(y) \Op{\phi}(x) \ket{0} \quad \text{for} \quad x^0 < y^0
   \end{cases}

In order to write this more compactly we introduce the new notation, the
time-ordering operator, :math:`{\mathcal{T}\,}`:

.. math::

   \label{eq:45}
     {\mathcal{T}\,}\Op{\phi}(x) \Op{\phi}(y) = 
     \begin{cases}
       \Op{\phi}(x) \Op{\phi}(y) \quad \text{for} \quad x^0 > y^0 \\
       \Op{\phi}(y) \Op{\phi}(x) \quad \text{for} \quad x^0 < y^0
     \end{cases}

 The time-ordering operator arranges an expression so that the operators
at earlier times are left of operators which occur later. Thus

.. math::

   \label{eq:46}
     \Delta~F (x-y) = \bra{0}   {\mathcal{T}\,}\Op{\phi}(x) \Op{\phi}(y) \ket{0}

 From contour integration in the complex plane,

.. math::

   \label{eq:47}
     i \Delta~F = - \int \frac{\dd[4]{k}}{(2 \pi)^4} \frac{e^{-ik \vdot(x-y)}}{k^2 - m^2 + i \epsilon}

 This is a Green’s function for the Klein-Gordon equation

.. math::

   \begin{aligned}
     \label{eq:47}
     ( \partial^2 + m^2 - i \epsilon) &i \Delta~F \\ &= - \int \frac{\dd[4]{k}}{(2 \pi)^4} 
                            \frac{(-k^2 +m^2 -i \epsilon) e^{-ik \vdot(x-y)}}{k^2 - m^2 + i \epsilon} \\
   &= \int  \frac{\dd[4]{k}}{(2 \pi)^4} e^{-i k\vdot (x-y)} \\ &= \delta^4(x-y)\end{aligned}

 Let
:math:`\mathcal{E} = (k^0)^2 - E^2(\vec{k}) + \frac{i \epsilon}{2 E(\vec{k})}`.
The Feynman propagator is then

.. math::

   \begin{aligned}
     \label{eq:47}
     i \Delta~F &= - \int \frac{\dd[4]{k}}{(2 \pi)^4} \frac{e^{-ik \vdot(x-y)}}{k^2 - m^2 + i \epsilon} \\
                &= - \int \dd{k^0} \frac{\dd[3]{k}}{(2 \pi)^4} \frac{e^{-ik \vdot(x-y)}}{(k^0)^2 - E^2(\vec{k}) +i \epsilon} \\
                &= - \int \dd{k^0} \frac{\dd[3]{k}}{(2 \pi)^4} 
                     \frac{e^{-ik^0(x^0-y^0)} e^{-ik \vdot(x-y)}}{\mathcal{E} \hcon{\mathcal{E}} }\end{aligned}

[scale=0.8]

(-5, 0) – (5, 0) node [below] :math:`\Re(k^0)`; (0, -5) – (0 , 2) node
[above] :math:`\Im(k^0)`;

(4, 0) node [above] :math:`C` arc (360:180: 4) – cycle;

(-2, 1) circle (.5mm); (-2.3, 1) – (-2.3, 0) node [midway, left]
:math:`\frac{\epsilon}{2E(\vec{k})}`; (-2, 1.3) – (0, 1.3) node [midway,
above] :math:`-E(\vec{k})`;

(2, -1) circle (.5mm); (2.3, -1) – (2.3, 0) node [midway, right]
:math:`\frac{\epsilon}{2E(\vec{k})}`; (2, -1.3) – (0, -1.3) node
[midway, below] :math:`-E(\vec{k})`;

Let us write
:math:` e^{-i k^0(x^0-y^0)} = e^{-i \Re k^0(x^0-y^0)} e^{\Im
  k^0(x^0-y^0)} `, and so long as :math:`x^0>y^0` we can complete the
contour in the lower-half plane; in the limit where the radius of the
half-sphere goes to infinity the extra contribution will vanish, and so

.. math::

   \begin{aligned}
     \label{eq:48}
     i \Delta~F(x-y) = - \oint_C \dd{k^0} \frac{\dd[3]{k}}{(2 \pi)^4} 
                     \frac{e^{-ik^0(x^0-y^0)} e^{-ik \vdot(x-y)}}{\mathcal{E} \hcon{\mathcal{E}} }\end{aligned}

 Noting that :math:`k^0 = E(\vec{k})`. The prescription of
:math:`i \epsilon` ensures that only one of the poles is enclosed in the
integration, by rotating the plane, lifting the poles off the axis;
applying the residue theorem,

.. math::

   \begin{aligned}
     \label{eq:48}
     i \Delta~F(x-y) &= -2 \pi i \int \frac{\dd[3]{k}}{(2 \pi)^4} 
                     \frac{e^{-ik^0(x^0-y^0)} e^{-ik \vdot(x-y)}}{2 E(\vec{k})} \\
   &= i \int { \frac{\dd[3]{k}}{(2 \pi)^3 2 E(\vec{k})}} e^{-ik\vdot(x-y)} \\ &= i D(x-y)\end{aligned}

 If :math:`x^0<y^0` then we need to complete the curve in the upper-half
plane to allow the extra contribution to vanish, picking out the pole at
:math:`k^0=-E(\vec{k})`, then,

.. math::

   \begin{aligned}
     \label{eq:48}
     i \Delta~F(x-y) &= -2 \pi i \int \frac{\dd[3]{k}}{(2 \pi)^4} 
                     \frac{e^{iE(\vec{k})(x^0-y^0)} e^{ik \vdot(x-y)}}{2 E(\vec{k})} \\
   &= i \int { \frac{\dd[3]{k}}{(2 \pi)^3 2 E(\vec{k})}} e^{ik\vdot(x-y)}, \quad \vec{k} \to - \vec{k}\\ &= i D(y-x)\end{aligned}


