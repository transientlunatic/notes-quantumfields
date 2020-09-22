Interacting scalar fields
*************************


The interacting scalar field is motivated by the Lagrangian

.. math::

   \label{eq:53}
     \Lag = \half \pd{\mu} \Op{\phi} \pu{\mu} \Op{\phi} 
     -\half m^2 \Op{\phi}^2 - \frac{\lambda}{4!} \Op{\phi}^4

 This is a real scalar field, and the only dimensionless coupling we can
add is :math:`\phi^4`. The energy function from the energy-momentum
tensor is

.. math::

   \Op{T}^{00} = \pdv{\Lag}{\pd{0} \Op{\phi}} \pu{0} \Op{\phi} -
   \Op{\Lag}

 and from this we can generate a new Hamiltonian,

.. math::

   \label{eq:53}
     \Op{H} = \Op{H}_0 + \Op{H}_{\rm int}

 where :math:`\Op{H}_0` is the Hamiltonian of the free scalar field. The
new part is

.. math::

   \label{eq:54}
     \Op{H}~{int} = - \int \Op{\Lag}~{int} \dd[3]{x} = \int \frac{\lambda}{4!} \Op{\phi}^4(x) \dd[3]{x}

 Ultimately we want to develop this to be able to make predictions about
particle scattering which can then be tested by experiment. If
:math:`\lambda` is small enough we can use perturbation theory to
calculate scattering cross-sections.

The Dirac interaction picture
=============================

Previously

.. math::

   \label{eq:55}
     \Op{\phi}~H (\vec{x}, t) = e^{i \Op{H}(t-t_0)} \Op{\phi}~S (\vec{x}) e^{-i \Op{H}_0 (t-t_0)}

 with Heisenberg picture operators changing with time, but Schrodinger
ones constant. In principle this is all that is necessary;
:math:`\Op{\phi}~H (\vec{x}, t_0) = \Op{\phi}~S(\vec{x})` is the
operator at the beginning, and we know how it changes with time.

This is hard to solve, so we can define operators in the interaction
picture,

.. math::

   \label{eq:56}
     \Op{\mathcal{O}}~{I}(\vec{x}, t) = e^{i \Op{H}_0(t-t_0)} \Op{\mathcal{O}}~S(\vec{x}) e^{-i \Op{H}_0(t-t_0)}

 for :math:`\Op{H}_0` the Hamiltonian of the free theory. Consider

.. math::

   \label{eq:57}
     \Op{\phi}~I (\vec{x},t) = e^{i \Op{H}_0(t-t_0)} \Op{\phi}~S (\vec{x}) e^{-i \Op{H}_0(t-t_0)}

 we’ve solved this, since it’s the field operator for the
non-interacting theory.

.. math::

   \label{eq:58}
     \Op{\phi}~I (x) = \int \nm{k} \qty( \Op{a}(\vec{k}) e^{i k \vdot x} + \hOp{a} (\vec{k}) e^{i k \vdot x} )

 This is related to the field operator for the interacting theory in the
Heisenberg picture by

.. math::

   \begin{aligned}
     \Op{\phi}~H (\vec{x}, t) &= e^{i \Op{H}(t-t_0)} \Op{\phi}~S (\vec{x}) e^{-i \Op{H}(t-t_0)} \\ 
   &= e^{i \Op{H}(t-t_0)} \qty[ e^{-i \Op{H}_0(t-t_0)} \Op{\phi}~I e^{i \Op{H}_0(t-t_0)} ] e^{-i \Op{H}(t-t_0)} \\
   &= \hOp{U}(t,t_0) \Op{\phi}~I (\vec{x}, t) \Op{U}(t, t_0)\end{aligned}

 with the time evolution operator defined

.. math:: \Op{U}(t, t_0) = e^{i \Op{H}_{0} (t-t_0)} e^{-i \Op{H}(t-t_0)}

The interacting and free Hamiltonians do not commute, and so
:math:`\Op{U}(t, t_0) \neq e^{-i \Op{H}~{int}(t-t_0)}`, and the CBH
expansion must be used. We can obtain a differential equation by
differentiating :math:`\Op{U}`,

.. math::

   \begin{aligned}
     i \pdv{\Op{U}}{t} &= i \qty( \pdv{t} e^{i \Op{H}_0(t-t_0)} ) e^{-i\Op{H}(t-t_0)} + i e^{\Op{H}_0(t-t_0)} \pdv{t} e^{-i \Op{H}(t-t_0)} \\
   &= -e^{i \Op{H}_0(t-t_0)} \Op{H}_0 e^{-i \Op{H}(t-t_0)} + e^{i \Op{H}_0(t-t_0)} \Op{H} e^{-i \Op{H}(t-t_0)} \\
   &= \underbracket{e^{i \Op{H}_0 (t-t_0)} \Op{H}~{int} e^{-i \Op{H} (t-t_0)}}_{\OP{H}~{int, I}} \times \underbracket{e^{i \Op{H}_0(t-t_0)} e^{{-i \Op{H}(t-t_0)}}}_{\Op{U}(t-t_0)}\end{aligned}

 We now have the problem of solving :math:` i \pdv{t} \Op{U}(t-t_0) =
\Op{H}~{int,I} \Op{U}(t,t_0)` for :math:`\Op{U}(t_0, t_0)=1`, in
integral form

.. math::

   \label{eq:60}
     \Op{U}(t-t_0) = 1 - i \int_{t_0}^t \dd{t_1 \Op{H}~{int,I}(t_1) } \Op{U}(t_1, t_0)

 but this can clearly continue *ad infinitum*, so

.. math::

   \begin{aligned}
   \Op{U} = \sum_{n=0}^{\infty} (-i)^n & \int_{t_0}^t \dd{t_1}  \\ & \int_{t_0}^{t_1} \dd{t_2} \dots \int_{t_0}^{t_{n-1}} \dd{t_n} \Op{H}~{int,I}(t_1) \dots \Op{H}~{int,I}(t_n)\end{aligned}

 we can simplify this by changing the area we integrate over, when
:math:`n=2` for example,

.. math::

   \begin{aligned}
     \int_{t_0}^t \dd{t_1} \int_{t_0}^{t_1} \dd{t_2} & \Op{H}~{int,I}(t_1) \Op{H}~{int,I}(t_2) \\
   &= \half \int_{t_0}^t \dd{t_1} \dd{t_2} \Op{T} \qty{\underbracket{\Op{H}~{int,I} (t_1) \Op{H}~{int,I}(t_2)}_{{\text{symmetric under } t_1 \leftrightarrow t_2}} }\end{aligned}

 Then

.. math::

   \begin{aligned}
     \Op{U}(t,t_0) &= \sum_{n=0}^{\infty} \frac{(-i)^n}{n!} \int_{t_0}^t \dd{t_1} \cdots \dd{t_n} \Op{T}\qty{\Op{H}~{int,I}(t_1) \cdots \Op{H}~{int,I}(t_n)} \\ &= \Op{T}e^{\qty( -i \int_{t_0}^t \dd{t'} \Op{H}~{int, I} (t') )}\end{aligned}

Thus, operators in the interaction picture evolve according to

.. math::

   \label{eq:62}
     \Op{\phi}~{I}(\vec{x},t) = \Op{U}(t,t_0) \Op{\phi}~H (\vec{x}) \hOp{U}(t,t_0)

 with state vectors given

.. math::

   \label{eq:63}
     \ket{\phi}~I = \Op{U}(t,t_0) \ket{\phi}~H

 and

.. math::

   \label{eq:64}
     \Op{U}(t,t_0) = \Op{T} \exp( -i \int_{t_0}^t \dd{t'} \Op{H}~{int,I}(t'))

 Since :math:`\Op{U}` is an operator containing both creation and
annihilation operators the number of particles can change with time.

The S matrix
============

Consider an initial state, :math:`\ket{i}` of particles, at a time
:math:`t=-\infty`, which interact with each other before reaching a
final state, :math:`\ket{f}` at time :math:`t=\infty`. In the Heisenberg
picture these states are constant and the final and initial states would
be equal. After the interaction we make a new measurement of the energy
and momentum of the final state and it collapses to the final state with
a probability :math:`\abs{\braket{f}{i}}}^2`; we need the Interaction
picture to calculate the states, however.

.. math::

   \begin{aligned}
       \label{eq:61}
       \Op{\phi}~{in} (\vec{x}) &= \lim_{t \to - \infty} \Op{\phi}~{H}(\vec{x},t) = \lim_{t \to - \infty} \Op{\phi}~{I}(\vec{x},t) = \Op{\phi}~S (\vec{x}) \\
      \Op{\phi}~{out} (\vec{x}) &= \lim_{t \to   \infty} \Op{\phi}~{H}(\vec{x},t) = \lim_{\substack{ t \to   \infty \\ t_0 \to - \infty}} \hOp{U}(t,t_0) \Op{\phi}~{I}(\vec{x},t) \Op{U}(t,t_0)
     \end{aligned}

and then the required projection is

.. math::

   \label{eq:65}
     S_{fi} = \braket{f}{i}~{H} = \lim_{\substack{t \to \infty \\ t_0 \to - \infty}} \bra{f} \Op{U}(t,t_0) \ket{i}~{I} = \bra{f} \Op{S} \ket{i}~{I}

 which is the S-matrix.

.. math::

   \begin{aligned}
     \label{eq:66}
     S_{fi} &=  \lim_{\substack{t \to \infty \\ t_0 \to - \infty}} \bra{f} \Op{U}(t,t_0) \ket{i} \nonumber\\
   &= \bra{f} \Op{T} \exp( -i \int_{t_0}^t \dd{t'} \Op{H}~{int,I}(t')) \ket{i} \nonumber\\
   &= \bra{f} \Op{T} \exp( -i \int \frac{\lambda}{4!} \Op{\phi}~{I}^4(x) \dd[4]{x} )\ket{i}\end{aligned}

 This can now be calculated using perturbation theory,

.. math::

   \begin{aligned}
     \label{eq:67}
     \bra{f}\Op{S}\ket{i} = &\braket{f}{i} - i \frac{\lambda}{4!} \int \dd[4]{x} \bra{f} \Op{T}\Op{\phi}^4~{I}(x) \ket{i} \nonumber\\
   &+\qty( -i \frac{\lambda}{4!} )^2 \int \dd[4]{x} \dd[4]{x'} \bra{f} \Op{T}\Op{\phi}^4~{I}(x) \Op{\phi}^4~I(x') \ket{i}\end{aligned}

 We can make use of Wick’s theorem to compute solutions involving
normal-ordered products and propagators.

The vacuum
==========

In the free theory the lowest energy state was :math:`\ket{0}`, and was
related to the field function :math:`\op{\phi}`; thus, in the
interacting picture we have a new vacuum, :math:`\ket{\Omega}`, and any
state in the interaction picture is not an eigenstate of the free
theory, since they interact with the virtual particles from the vacuum.
We shall ignore this problem for now.

Wick’s Theorem
==============

Consider :math:`\Op{T} \Op{\phi}(x) \Op{\phi}(y)`, and then split the
positive and negative frequency components,

.. math::

   \label{eq:69}
     \Op{\phi}(x) = \Op{\phi}^+(x) + \Op{\phi}^-(x)

 with :math:`\Op{\phi}^+ = \int \nm{k} \Op{a}(\vec{k}) e^{-ik \vdot x}`
and :math:`\Op{\phi}^- = \int \nm{k} \Op{a}(\vec{k}) e^{ik \vdot x}`.
For :math:`x^0 > y^0`,

.. math::

   \begin{aligned}
     \label{eq:70}
     \Op{T} \Op{\phi}(x) \Op{\phi}(y) &= \quad\Op{\phi}^+(x) \Op{\phi}^+(y) + \Op{\phi}^+(x) \Op{\phi}^-(y) \nonumber\\
                                      &\quad+   \Op{\phi}^-(x) \Op{\phi}^+(y) + \Op{\phi}^-(x) \Op{\phi}^-(y) \nonumber\\
   &= \quad\Op{\phi}^+(x) \Op{\phi}^+(y) + \Op{\phi}^-(y) \Op{\phi}^+(x) \nonumber\\
                                      &\quad+   \Op{\phi}^-(x) \Op{\phi}^+(y) + \Op{\phi}^-(x) \Op{\phi}^-(y) \nonumber\\
   &\quad+ \comm{\phi^+(x)}{\phi^-(y)} \nonumber\\
   &= \normbracket{\Op{\phi}(x) \Op{\phi}(y)} + D(x-y)\end{aligned}

 If :math:`x^0<y^0` then :math:`
  \tOrd \Op{\phi}(x) \Op{\phi}(y) = \normbracket{\Op{\phi}(x) \Op{\phi}(y)} + D(y-x)
`, so for any :math:`x^0` and :math:`y^0`,

.. math::

   \label{eq:72}
      \tOrd \Op{\phi}(x) \Op{\phi}(y) = \normbracket{\Op{\phi}(x) \Op{\phi}(y)} + \Delta~F(x-y)

 Thus, for fields we can write Wick’s theorem as

.. math::

   \begin{aligned}
     \tOrd \Op{\phi}(x_1) \Op{\phi}(x_2) \cdots \Op{\phi}(x_n) =& \normbracket{ \Op{\phi}(x_1) \Op{\phi}(x_2) \cdots \Op{\phi}(x_n)}\nonumber\\ &+ \text{all contractions.}\end{aligned}

[Wick Contractions]

.. math::

   \begin{aligned}
    \allowdisplaybreaks
    \tOrd \Op{\phi}(x_1) \Op{\phi}(x_2) &\Op{\phi}(x_3) \Op{\phi}(x_4) \\ =& \quad\, \normbracket{\Op{\phi}(x_1) \Op{\phi}(x_2) \Op{\phi}(x_3) \Op{\phi}(x_4)} \\
   &+ {\normbracket{\Op{\phi}(x_{3}) \Op{\phi}(x_{4})} \,  \Delta~F (x_{1} - x_{2}) } \\&+ {\normbracket{\Op{\phi}(x_{2}) \Op{\phi}(x_{4})} \,  \Delta~F (x_{1} - x_{3}) } \\ &+ {\normbracket{\Op{\phi}(x_{2}) \Op{\phi}(x_{3})} \,  \Delta~F (x_{1} - x_{4}) } \\&+ {\normbracket{\Op{\phi}(x_{1}) \Op{\phi}(x_{4})} \,  \Delta~F (x_{2} - x_{3}) } \\ &+ {\normbracket{\Op{\phi}(x_{1}) \Op{\phi}(x_{3})} \,  \Delta~F (x_{2} - x_{4}) } \\&+ {\normbracket{\Op{\phi}(x_{1}) \Op{\phi}(x_{2})} \,  \Delta~F (x_{3} - x_{4}) } \\
   &+ \Delta~F (x_1 - x_2) \Delta~F (x_3 - x_4) \\ &+ \Delta~F (x_1 - x_3) \Delta~F(x_2-x_4) \\ &+ \Delta~F(x_1-x_4) \Delta~F (x_2-x_3) \\
   \bra{0}  \tOrd \Op{\phi}(x_1) \Op{\phi}(x_2) &\Op{\phi}(x_3) \Op{\phi}(x_4) \ket{0} \\
   =&\quad\, \Delta~F (x_1 - x_2) \Delta~F (x_3 - x_4) \\ &+ \Delta~F (x_1 - x_3) \Delta~F(x_2-x_4) \\ &+ \Delta~F(x_1-x_4) \Delta~F (x_2-x_3) \\\end{aligned}

A common notation, used to simplify the appearance of contractions is

.. math::

   \label{eq:73}
     \contraction{}{\Op{\phi}}{(x)}{\Op{\phi}}{}
     \Op{\phi}(x) \Op{\phi}(y) = \Delta~F (x-y)

:math:`2 \to 2` scattering
==========================

Consider a system which has an initial state with two particles at
momenta :math:`\vec{k}_1` and :math:`\vec{k}_2`, and a final state with
momenta :math:`\vec{p}_1` and :math:`\vec{p}_2`.

(v1) circle (0.2); (k1.west) node :math:`\vec{k}_1`; (k2.west) node
:math:`\vec{k}_2`; (p1.east) node :math:`\vec{p}_1`; (p2.east) node
:math:`\vec{p}_2`;

The initial state is

.. math:: \ket{\vec{k}_1, \vec{k}_2} = \hOp{a}(\vec{k}_2) \hOp{a}(\vec{k}_1) \ket{0}

 while the final state is

.. math:: \ket{\vec{p}_1, \vec{p}_2} = \hOp{a}(\vec{p}_2) \hOp{a}(\vec{p}_1) \ket{0}

 The first term in the expansion of the :math:`S`-matrix is then

.. math::

   \begin{aligned}
     &\braket{\vec{p}_1, \vec{p}_2}{\vec{k}_1, \vec{k}_2} = \bra{0} \Op{a}(\vec{p}_2) \Op{a}(\vec{p}_1) \hOp{a}(\vec{k}_2) \hOp{a}(\vec{k}_1) \ket{0}\\
     &= \bra{0} \Op{a}\vec{p}_2\qty( \comm{\Op{a}(\vec{p}_1)}{\hOp{a}(\vec{k}_2)} + \hOp{a}(\vec{k}_2) \Op{a}(\vec{p}_1) ) \hOp{a}(\vec{k}_1) \ket{0} \\
   &= \comm{\Op{a}(\vec{p}_1)}{\hOp{a}(\vec{k}_2)}  \bra{0} \Op{a}(\vec{p}_2) \hOp{a}(\vec{k}_1) \ket{0}  \\
   &\qquad+  \bra{0} \Op{a}(\vec{p}_2) \hOp{a}(\vec{k}_2) \ket{0}  \comm{\Op{a}(\vec{p}_1)}{\hOp{a}(\vec{k}_2)} \ket{0}\\
   &= \comm{\Op{a}(\vec{p}_1)}{\hOp{a}(\vec{k}_2)} \comm{\Op{a}(\vec{p}_1)}{\hOp{a}(\vec{k}_2)} + \comm{\Op{a}(\vec{p}_1)}{\hOp{a}(\vec{k}_2)} \comm{\Op{a}(\vec{p}_1)}{\hOp{a}(\vec{k}_2)}\end{aligned}

 Since

.. math:: \comm{\Op{a}(\vec{p}_1)}{\hOp{a}(\vec{k}_1)} =(2\pi)^3 2 E(\vec{p}_1) \delta^3(\vec{p}_1 - \vec{k}_1)

 We have

.. math:: (2 \pi)^6 E(\vec{k}_1) E(\vec{k}_2) \qty( \delta^3 (\vec{p}_1 - \vec{k}_1) \delta^3(\vec{p}_2 - \vec{k}_2) + \delta^3(\vec{p}_1 - \vec{k}_2) \delta^3(\vec{p}_2 - \vec{k}_1) )

 In diagrammatic form this is

.. math::

   \begin{tfeynma}[1em]
        \tfcol{k2,k1} \tfcol{p2,p1} \tf{k1,p1} \tf{k2,p2}
      \end{tfeynma}
    +
    \begin{tfeynma}[1em]
        \tfcol{k2,k1} \tfcol{p2,p1} \tf{k1,p2} 
   \fill [white] (0.7em,2) circle (0.3);
   \tf{k2,p1}
    \end{tfeynma}

 This isn’t scattering, so can be excluded from the calculation. The
second term is

.. math:: -i \frac{\lambda}{4!} \int \dd[4]{x} \bra{\vec{p}_1,\vec{p}_2} T \Op{\phi}^4(x) \ket{\vec{k}_1, \vec{k}_2}

 By Wick’s theorem,\ 

.. math:: T \Op{\phi}^4(x) =  \normbracket{\Op{\phi}^4(x)} + 6 \normbracket{\Op{\phi}^2(x)} \Delta~F(x-x) + 3 \Delta~F(x-x) \Delta~F(x-x)

 The normal-ordered product gives

.. math::

   \begin{aligned}
    -& i \frac{\lambda}{4} \int \dd[4]{x} \nm{q_1} \nm{q_2} \nm{q_3} \nm{q_4}  e^{i (q_1+q_2-q_3-q_4) \vdot x}\\
   & \times \bra{0} \Op{a}(\vec{p}_2) \Op{a}(\vec{p}_1) \hOp{a}(\vec{q}_1) \hOp{a}(\vec{q}_2) \Op{a}(\vec{q}_3) \Op{a}(\vec{q}_4) \hOp{a}(\vec{k}_2) \hOp{a}(\vec{k}_1) \ket{0}\end{aligned}

 Then, since, for example :math:`\Op{a}(\vec{q}_4) \hOp{a}(\vec{k}_2) =
\comm{\Op{a}(\vec{q}_4)}{\hOp{a}(\vec{k}_4)} + \hOp{a}(\vec{k}_2) \Op{a}(\vec{q}_4)`,
and working through each of the terms,

.. math::

   \begin{aligned}
       \bra{0} & \Op{a}(\vec{p}_2) \Op{a}(\vec{p}_1) \hOp{a}(\vec{q}_1) \hOp{a}(\vec{q}_2) \Op{a}(\vec{q}_3) \Op{a}(\vec{q}_4) \hOp{a}(\vec{k}_2) \hOp{a}(\vec{k}_1) \ket{0} \\
    &= 4 \comm{\Op{a}(\vec{p}_1)}{\hOp{a}(\vec{q}_1)} \comm{\Op{a}(\vec{p}_2)}{\hOp{a}(\vec{q}_2)} \\ &\qquad\times\comm{\Op{a}(\vec{q}_3)}{\hOp{a}(\vec{k}_2)} \comm{\Op{a}(\vec{q}_4)}{\hOp{a}(\vec{k}_1)}
    \end{aligned}

 Then, given the commutation relations, :math:`
 \comm{\Op{a}(\vec{p}_1)}{\hOp{a}(\vec{q}_1)} = (2 \pi)^3 3
 E(\vec{p}_1) \delta^3(\vec{p}_1 - \vec{q}_1)` and so forth,

.. math::

   \begin{aligned}
      &= - i \lambda \int  \exp(i [p_1+p_2-k_1-k_2] \vdot x ) \\
   &= - i \lambda  (2 \pi)^4 \delta^4(p_1 + p_2 - k_1 - k_2) \\
   &=
   \begin{tfeynma}[1em]
     \tfcol{k2,k1} \tfcol{p2,p1} \tf{k2,p1} \tf{k1,p2}
   \end{tfeynma}
    \end{aligned}

 The next part is the

.. math::

   \begin{aligned}
   -i & \frac{\lambda}{4!} \int \bra{\vec{p}_1, \vec{p}_2} \normbracket{\Op{\phi}^2(x)} \ket{\vec{k}_1 \vec{k}_2} \Delta~F (x-x) \\
   &= -2i \frac{\lambda}{4!} \int \dd[4]{x} \nm{q_1} \nm{q_2} e^{i(q_1-q_2) \vdot x} \Delta~F(x-x) \\ &\qquad\bra{0} \Op{a}(\vec{p}_2) \Op{a}(\vec{p}_1) \hOp{a}(\vec{q}_1) \Op{a}(\vec{q}_2)  \hOp{a}(\vec{k}_2) \hOp{a}(\vec{k}_1) \ket{0}\\
   &= - i \frac{\lambda}{12} \int \frac{\dd[4]{k}}{(2 \pi)^4} \nm{q_1} \nm{q_2} \frac{\delta^4(q_1 - q_2)}{k^2 - m^2 + i \epsilon} \\ & \qquad \bra{0} \Op{a}(\vec{p}_2) \Op{a}(\vec{p}_1) \hOp{a}(\vec{q}_1) \Op{a}(\vec{q}_2)  \hOp{a}(\vec{k}_2) \hOp{a}(\vec{k}_1) \ket{0} \\
   &= i \frac{\lambda}{12} \int \frac{\dd[4]{k}}{(2 \pi)^4} 2(2 \pi)^3  \frac{\delta^4(q_1 - q_2)}{k^2 - m^2 + i \epsilon} \\
   & \qquad \bigg( E(\vec{k}_1) \delta^3 (\vec{p}_2 - \vec{p}_1) \delta^3 (\vec{p}_1 - \vec{k}_1) \delta^3(\vec{q}_2 - \vec{k}_2) \\
   & \qquad \quad E(\vec{k}_1) \delta^3(\vec{p}_2 - \vec{k}_1) \delta^3 (\vec{p}_1 - \vec{q}_1) \delta^3 (\vec{q}_2 - \vec{k}_2) \\
   & \qquad \quad E(\vec{k}_2) \delta^3(\vec{p}_2 - \vec{q}_1) \delta^3(\vec{p}_1 - \vec{k}_2) \delta^3 (\vec{q}_2 - \vec{k}_1) \\
   & \qquad \quad E(\vec{k}_2) \delta^3(\vec{p}_2 - \vec{k}_2) \delta^3(\vec{p}_1 - \vec{q}_1) \delta^3 (\vec{q}_2 - \vec{k}_1) \bigg) \\
   &= i \frac{\lambda}{6} \int \frac{\dd[4]{k}}{(2 \pi)^4} \frac{1}{k^2-m^2+ i \epsilon}\\ 
   &\qquad [ E(\vec{k}_1) (\delta^3(\vec{p}_1 - \vec{k}_1) \delta^4(p_2 - k_2) + \delta^3(\vec{p}_2-\vec{k}_1) \delta^4(p_1-k_2) ) \\
   &\qquad   E(\vec{k}_2) (\delta^3(\vec{p}_1 - \vec{k}_2) \delta^4(p_2 - k_1) + \delta^3(\vec{p}_2 - \vec{k}_2) \delta^4(p_1-k_1) )] \\
   &= 
     \begin{tfeynma}   \tfcol{k2,k1}   \tfcol{p2,p1}   \tf{k1,p1} \tf{k2,p2} \draw ($(k2)!0.5!(p2)$) node (c2) {}; \draw (c2.center) to (c2.north west) to [loop] (c2.north east) to (c2.center);  \end{tfeynma}
   + \begin{tfeynma}   \tfcol{k2,k1}   \tfcol{p2,p1}   \tf{k1,p1} \tf{k2,p2} \draw ($(k1)!0.5!(p1)$) node (c2) {}; \draw (c2.center) to (c2.south east) to [loop] (c2.south west) to (c2.center); \end{tfeynma}
   + \begin{tfeynma}   \tfcol{k2,k1}   \tfcol{p2,p1}   \tf{k1,p2} \draw ($(k1)!0.5!(p2)$) node (c2) {}; \fill [white] (c2) circle (0.3);  \tf{k2,p1}   \draw (c2.center) to (c2.north west) to [loop] (c2.north east) to (c2.center); \end{tfeynma}
   + \begin{tfeynma}   \tfcol{k2,k1}   \tfcol{p2,p1}   \tf{k2,p1} \draw ($(k1)!0.5!(p2)$) node (c2) {}; \fill [white] (c2) circle (0.3);  \tf{k1,p2}  \draw [rounded corner](c2.center) to (c2.north west) to [loop] (c2.north east) to (c2.center);  \end{tfeynma}\end{aligned}

 None of these lines transfer momentum, so there is no scattering here
either. Notice that the integral is also divergent (a point which is
addressed later).

The last part is also not scattering:

.. math::

   -i \frac{\lambda}{6} \int \braket{\vec{p}_1, \vec{p}_2}{\vec{k}_1, \vec{k}_2} \Delta~F^2(x-x) \dd[4]{x} = \begin{tfeynma}[1em]   \tfcol{k2,k1}   \tfcol{p2,p1}   \tf{k1,p1} \tf{k2,p2} \end{tfeynma} 
     \begin{tfeynma}[0.3em][0.5ex]
       \tfcol{k2,k1} \tfcol{p2,p1} \tf{k1,p2} \tf{p1,k2} \tf[loop]{k1,p1} \tf[loop]{p2,k2}
     \end{tfeynma} +
   \begin{tfeynma}[1em]   \tfcol{k2,k1}   \tfcol{p2,p1}   \tf{k1,p2} \draw ($(k1)!0.5!(p2)$) node (c2) {}; \fill [white] (c2) circle (0.3);  \tf{k2,p1} ; \end{tfeynma}
     \begin{tfeynma}[0.3em][0.5ex]
       \tfcol{k2,k1} \tfcol{p2,p1} \tf{k1,p2} \tf{p1,k2} \tf[loop]{k1,p1} \tf[loop]{p2,k2}
     \end{tfeynma}

 Here the figure-of-eight diagrams are produced by the propagator
:math:`\Delta~F^2(x-x)`, and are a consequence of using the free rather
than the interacting vacuum.

The next term in the perturbative expansion is

.. math::

   \qty(-i \frac{\lambda}{4!})^2 \int \bra{\vec{p}_1,\vec{p}_2} T
   \Op{\phi}^4(x) \Op{\phi}^4(y) \ket{\vec{k}_1, \vec{k}_2}

The time-ordering is now important since there are two events, :math:`x`
and :math:`y`. These connected scattering events have the form

.. math::

   \begin{tfeynma}[1em]
     \tfcol{k2,k1} 
     \tfcol{p2,p1}
     \tf[left]{k2,p2}
     \tf[right]{k1,p1}
   \end{tfeynma}
   +
   \begin{tfeynma}[.45em]
     \tfcol{k2,k1} 
     \tfcol{p2,p1}
     \tf[left]{k1,k2}
     \tf[right]{p1,p2}
   \end{tfeynma}
   +
   \begin{tfeynma}
       \tfcol{k2,k1} 
       \tfcol{p2,p1}
       \tf{p1,k2}
       \tf{p2, k1}
       \draw ($(k2)!0.75!(p1)$) node (c2) {};
       \draw  (c2.center)to (c2.north west) to [loop] (c2.north) to (c2.center);
   \end{tfeynma} + \cdots

 The momentum cirulating in the loop is unconstrained, and so must be
integrated over, but this integral will be divergent.

Feynman Rules
=============

#. For each propagator,

   .. math:: \begin{tfeynma}    \tfcol{a} \tfcol{b} \tf{a,b}  \end{tfeynma} = \frac{i}{k^2-m^2+i \epsilon}

#. For each vertex,

   .. math:: \begin{tfeynma}\tfcol{k2,k1} \tfcol{p2,p1} \tf{k2,p1} \tf{k1,p2} \end{tfeynma} = -i \lambda

#. Momentum must be conserved at every vertex, so e.g. 

   .. math:: (2 \pi)^4 \delta^4(p_1 + p_2 - k_1 - k_2)

#. Every unconstrained momentum must be integrated over,

   .. math:: \int \frac{\dd[4]{k}}{(2 \pi)^4}

#. Factors must be included for the number of symmetrical arrangements
   of diagram possible.

The true vacuum
===============

The true vacuum of the full interacting Hamiltonian is represented as
:math:`\ket{\Omega}`, and defined such that

.. math::

   \label{eq:71}
     \Op{H}~{int} \ket{\Omega} = 0

We can then define the *:math:`n`-point Green’s function*, or
:math:`n`-point correlator,

.. math::

   \label{eq:74}
     G_n(x_1, x_2, \dots, x_n) \equiv \bra{\Omega} T \Op{\phi}~H(x_1) \Op{\phi}~H(x_2) \dots \Op{\phi}~H(x_n) \ket{\Omega}

 Assuming that the product of :math:`x`\ s are time ordered already, the
Heisenberg fields can be converted to interaction fields by

.. math::

   \label{eq:75}
     \Op{\phi}~H(\vec{x}) = \hOp{U}(t,t_0) \Op{\phi}~I(\vec{x}) \Op{U}(t,t_0)

 Then, using the relations

.. math:: \Op{U}(t_1,t_2) \Op{U}(t_2,t_3) = \Op{U}(t_1, t_3)

 and

.. math:: \Op{U}(t_1,t_3) \hOp{U}(t_2, t_3) = \Op{U}(t_1, t_2)

 it is possible to shorten each pair

.. math::

   \begin{split}
   &\Op{\phi}~H(x_1) \Op{\phi}~H(x_2) \\&\quad= 
   \hOp{U}(t_1,t_0) \Op{\phi}~I(\vec{x}) \Op{U}(t_1,t_0) 
   \hOp{U}(t_2,t_0) \Op{\phi}~I(\vec{x}) \Op{U}(t_2,t_0)
   \\ &\quad=
   \hOp{U}(t_1,t_0) \Op{\phi}~I(\vec{x}) \Op{U}(t_1,t_2) \dots
   \end{split}

Now, taking :math:`\exp(-i \Op{H} t) \ket{0}`, and inserting a complete
set of energy states,

.. math::

   \label{eq:76}
     \begin{split}
       e^{(-i \Op{H} t )} \ket{0} &= e^{(-i \Op{H} t)} \ket{\Omega} \braket{\Omega}{0}+ \sum_{n \neq 0}  e^{(-i \Op{H} t)} \ket{n} \braket{n}{0}\\
   &=  e^{(-i E_0 t)} \ket{\Omega} \braket{\Omega}{0}+ \sum_{n \neq 0}  e^{(-i E_n t)} \ket{n} \braket{n}{0}
     \end{split}

 Taking :math:`t \to \infty` then all but the first term vanish
(Riemann-Lebesgue lemma), so

.. math:: \lim_{t \to \infty} e^{-i \Op{H} t} \ket{0} = \lim_{t \to \infty} e^{-i E_0 t} \ket{\Omega} \braket{\Omega}{0}

 Then

.. math::

   \begin{aligned}
     \ket{\Omega} &= \lim_{t \to \infty} \qty( e^{-i E_0 t} \ket{\Omega}
     \braket{\Omega}{0})^{-1} e^{-i H t} \ket{0} \\
   &=  \lim_{t \to \infty} \qty( e^{-i E_0 (t+t_0)} \braket{\Omega}{0} )^{-1} e^{-i H(t+t_0)}\ket{0} \\
   &=  \lim_{t \to \infty} \qty( e^{-i E_0 (t+t_0)} \braket{\Omega}{0} )^{-1} e^{-i \Op{H}(t+t_0)} e^{-i \Op{H}_0(t+t_0)}\ket{0} \\
   &=  \lim_{t \to \infty} \qty( e^{-i E_0 (t+t_0)} \braket{\Omega}{0} )^{-1} \Op{U}(t_0-t) \ket{0}\end{aligned}

 By similar logic,

.. math:: \bra{\Omega} = \lim_{t \to \infty} \bra{0} \Op{U}(t,t_0) \qty( e^{-i E_0(t-t_0)} \braket{0}{\Omega} )^{-1}

Thus

.. math::

   \begin{aligned}
     \bra{\Omega} & \Op{\phi}~H(x_1) \Op{\phi}~H(x_2) \dots \Op{\phi}~H(x_n)  \ket{\Omega} \\
   &=  \lim_{t \to \infty} \qty(\abs{\braket{0}{\Omega}}^2 e^{-i 2E_0 t} )^{-1}
   \\ & \qquad \qquad \bra{0}T \Op{\phi}~I(x_1) \Op{\phi}~I(x_2) \dots \Op{\phi}~I(x_n) \Op{U}(t,-t) \ket{0}\end{aligned}

This is true for all :math:`n`, so choosing :math:`n=0`,

.. math::

   \begin{aligned}
     \braket{\Omega} = \lim_{t \to \infty} \qty( \abs{ \braket{0}{\Omega} }^2 e^{-i 2 E_0 t} )^{-1} \bra{0} \Op{U}(t,-t) \ket{0} \end{aligned}

 This implies

.. math::

   \label{eq:77}
     \lim_{t \to \infty} \qty( \abs{ \braket{0}{\Omega} }^2 e^{-i 2 E_0 t} )^{-1} = \lim_{t \to \infty} \frac{1}{\bra{0} \Op{U}(t,-t) \ket{0}}

 The *:math:`n`-point Green’s function* is then

.. math::

   \label{eq:78}
     G_n (x_1, x_2, \dots, x_n) \frac{\bra{0} T \Op{\phi}~I(x_1) \Op{\phi}~I(x_2) \dots \Op{\phi}~I(x_n) \Op{S}\ket{0}}{\bra{0} \Op{S} \ket{0}}

 This division is the justification for the removal of disconnected
diagrams, as they appear in both the numerator and the denominator.

The LSZ Reduction formula
=========================

The :math:`n`-point Green’s function is related to the S-matrix
expectation values via the LSZ reduction formula

.. math::

   \begin{aligned}
   &  \bra{\vec{p}_1, \vec{p}_2, \dots, \vec{p}_n} \Op{S} \ket{\vec{k}_1, \vec{k}_2, \dots, \vec{k}_n} \\
   &= i^{m+n} \int \dd[4]{x_1} \dots \dd[4]{x_m} \dd[4]{y_1} \dots \dd[4]{y_n} \\
   & \times \exp(-i \qty[ k_1 \vdot x_1 + \cdots + k_m \vdot x_m - p_1 \vdot y_1 - \cdots p_n \vdot y_n])\\
   & \times \qty( \partial_{x_1}^2 + m^2) \cdots \qty(\partial_{x_m}^2 + m^2) \qty( \partial_{y_1}^2 + m^2) \cdots (\partial_{y_n}^2 + m^2) \\
   & \times G_n(x_1, x_2, \dots, x_n)\end{aligned}


