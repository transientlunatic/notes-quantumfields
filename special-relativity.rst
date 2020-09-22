Special Relativity
******************

Special relativity is the extension of classical mechanics to extremely
high energy situations, and is based around just two axioms.

[Event] An event is something which happens at a specific place at a
particular instant in time.

[Inertial Reference Frame] An inertial reference frame is a means of
assigning a position to an event. They have no acceleration, such that
an inertial reference fram is a reference frame with respect to which
Newton’s Second Law holds.

The axioms of Special Relativity
--------------------------------

#. All inertial reference frames are equivalent for the performance of
   all physical experiments.

#. The speed of light has the same, constant value in all reference
   frames.

The first axiom is more commonly known as the *principle of relativity*.

Minkowski Diagrams
------------------

Any event can be described by four coordinates, :math:`(t;x,y,z)`, but,
by choosing an appropriate reference frame we can describe this with
just two coordinates, :math:`(t;x)`; a diagram of this situation is
shown in figure [fig:minksimple].

[scale=1.5] (.5, .5) circle (0.05); (-1,-1) – (1.7,-1) node [below]
space, :math:`x`; (-1, -1) – (-1, 1.2) node [right] time, :math:`t`;

Invariant Interval
------------------

In Euclidean space there is a concept of *distance* which is invariant;
:math:`x^2 + y^2 + z^2` is the same under all transformations. In
spacetime there is a generalisation of this concept in the *invariant
interval*:

.. math::

   \label{eq:invariantinter}
     s^2 = \Delta t^2 - \Delta x^2

 The value of :math:`s^2` provides a simplified understanding of
causality.

-  :math:`s^2 > 0`—time-like separation.

-  :math:`s^2 = 0`—null separation (light-like).

-  :math:`s^2 < 0`—space-like separation.

[scale=1.7] (-1,-1) – (1,1) node [above] :math:`s^2 = 0`; (-1,-1) –
(1,1) – (-1,1) –cycle; (-.5,0) node :math:`s^2 > 0`; (-1,-1) – (1,-1) –
(1,1) –cycle; (.5,0) node :math:`s^2 < 0`; (-1,-1) – (1.7,-1) node
[below] space, :math:`x`; (-1, -1) – (-1, 1.2) node [right] time,
:math:`t`;

Lorentz Transformations
-----------------------

Consider two frames moving relative to one another, :math:`S` and
:math:`S^\prime`. The frames are in standard configuration, i.e. an
event in :math:`S` at :math:`(0,0)` also occurs at :math:`(0,0)` in
:math:`S^\prime`. To convert from an event occuring in :math:`S` to one
in :math:`S^\prime` we use a Lorentz transform. These have the form

.. math::

   \begin{aligned}
     x^\prime &= x \cosh \phi - t \sinh \phi \\
   t^\prime &= -x \sinh \phi + t \cosh \phi\end{aligned}

and with

.. math:: \phi(v) = \tanh[-1](v)

 These can also be written

.. math::

   \begin{aligned}
       t^\prime &= \gamma (t-vx) \\
       x^\prime &= \gamma (x-vt)
     \end{aligned}

.. math::

   \begin{aligned}
       t &= \gamma (t^\prime + v x^\prime) \\
       x &= \gamma (x^\prime + v t^\prime)
     \end{aligned}

Adding velocities
-----------------

Since :math:`e^{\pm \phi} = \cosh(\phi) \pm \sinh(\phi)`,

.. math::

   \begin{aligned}
       t^\prime - x^\prime &= e^{\phi} (t-x) \\
       t^\prime + x^\prime &= e^{-\phi} (t+x)
     \end{aligned}

Proper Time
-----------

In the frame :math:`S` there are events at :math:`(0,0)` and
:math:`(t,x)`. A clock is moving at a constant speed :math:`v`, so that
it is present at both events. Pick :math:`S^{\prime \prime}`, the
clock’s rest frame; :math:`t^{\prime
  \prime}` is thus the reading on the clock. This is denoted
:math:`\tau`, the proper time. In any other frame in standard
configuration we can then write

.. math::

   \label{eq:1}
     \tau = \gamma(t-vx)

 The proper time will be agreed upon by all observers, and as such is a
Lorentz scalar. Since the velocity is :math:`v = \frac{x}{t}`,

.. math:: t^2 - x^2 = \tau^2 = t^{\prime 2} - x^{\prime 2}

Four-vectors
------------

In :math:`4`-dimensional spacetime the prototype displacement vector has
the form

.. math:: \qty( \Delta t , \Delta x, \Delta y, \Delta z )

 and the transformation from one :math:`4`-vector to another is

.. math::

   \label{eq:2}
     \begin{bmatrix}
       \Delta t \\ \Delta x \\ \Delta y \\ \Delta z
     \end{bmatrix}
   =
   \begin{bmatrix}
     \gamma & + \gamma v & 0 & 0 \\
   + \gamma v & \gamma &0 & 0 \\
   0 & 0 & 1 & 0 \\
   0 & 0 & 0 & 1
   \end{bmatrix}
   \begin{bmatrix}
     \Delta t^{\prime} \\ \Delta x^{\prime} \\ \Delta y^{\prime} \\ \Delta z^{\prime}
   \end{bmatrix}

.. math::

   \label{eq:2}
   \begin{bmatrix}
     \Delta t^{\prime} \\ \Delta x^{\prime} \\ \Delta y^{\prime} \\ \Delta z^{\prime}
   \end{bmatrix}
   =
   \begin{bmatrix}
     \gamma & - \gamma v & 0 & 0 \\
   - \gamma v & \gamma &0 & 0 \\
   0 & 0 & 1 & 0 \\
   0 & 0 & 0 & 1
   \end{bmatrix}
     \begin{bmatrix}
       \Delta t \\ \Delta x \\ \Delta y \\ \Delta z
     \end{bmatrix}

It is more normal to denote each component of the 4-vector as
:math:`x^n`, :math:`n \in \{0,1,2,3 \}`, or collectively,
:math:`x^{\mu}`.

Four-vector inner products
--------------------------

The inner product of two four-vectors is somewhat less straightforward
that a three-vector scalar product.

[Four-vector inner product]

.. math::

   \label{eq:3}
       \braket{A}{B} = \sum_{\mu, \nu} \eta_{\mu \nu} A^{\mu} B^{\nu}

 for :math:`\eta_{\mu \nu} = \diag(1, -1, -1, -1)` which is the metric
tensor for a non-accelerating reference frame.

Velocity and Acceleration Vectors
---------------------------------

The displacement 4-vector, :math:`\Delta x^{\mu}`, transforms properly,
as does the infinitessimal displacement, :math:`\dd{x^{\mu}}`. The
proper time, :math:`\tau`, is the Lorentz scalar, so we can divide each
component of :math:`\dd{x^{\mu}}` by :math:`\dd{\tau}` and get a new
vector, the velocity,

.. math:: U = \qty( \dv{x^0}{\tau}, \dv{x^1}{\tau}, \dv{x^2}{\tau}, \dv{x^3}{\tau} )

 and likewise, the acceleration,

.. math:: A = \qty( \dv[2]{x^0}{\tau}, \dv[2]{x^1}{\tau}, \dv[2]{x^2}{\tau}, \dv[2]{x^3}{\tau} )

Now, since :math:`t = \gamma \tau`,

.. math:: U^{\mu} = \qty( \gamma c , \gamma \vec{v} )

Momentum
--------

Given the four-velocity we can find a four-momentum as well.

.. math:: p^{\mu} = (\gamma m c, \gamma m \vec{v} ) = \qty(\frac{E}{c}, \vec{p} )

 The norm of any four-vector will be Lorentz invariant, so

.. math:: p^2 = \frac{E^2}{c^2} - \vec{p}^2

 In the particle’s rest frame,

.. math:: p^{\mu} = (mc, \vec{0}) \therefore p^2 = m^2 c^2

 and since it is Lorentz invariant, it must be the case in all frames.
Thus

.. math:: \frac{E^2}{c^2} - \vec{p}^2 = m^2 c^2  \quad \therefore \quad E^2 - \vec{p}^2 c^2 = m^2 c^4

Invariant Mass
--------------

In scattering interactions the *invariant mass* is a useful quantity.
Given a pair of particles with momenta :math:`p_1` and :math:`p_2`, the
squared invariant mass, when working in natural units, is

.. math::

   \begin{aligned}
   m_{12}^2  & = (p_1 + p_2)^2 \nonumber                                                                      \\
            & = (E_1+E_2, \vec{p}_1 + \vec{p}_2)^2 \nonumber                                                 \\
            & = (E_1+E_2)^2 - (\vec{p}_1 + \vec{p}_2) \cdot (\vec{p}_1 + \vec{p}_2) \nonumber                \\
            & = E_1^2 - \vec{p}_1^2 + E_2^2 - \vec{p}_2^2 + 2E_1 E_2 - 2 \vec{p}_1 \cdot \vec{p}_2 \nonumber \\
            & = m_1^2 + m_2^2 + 2(E_1 E_2 - \vec{p}_1 \cdot \vec{p}_2) \end{aligned}

[Two particles, one at rest] :math:`\vec{p}_2 = \vec{0}`, and
:math:`E_2 = m_2`. Thus

.. math:: m_{12}^2 = m_1^2 + m_2^2 + 2 m_2 E_1

[The Centre of Momentum Frame] The total 3-mometum in this frame is
:math:`\vec{0}`, so,

.. math:: \vec{p}^{\text{com}}_1 = - \vec{p}^{\text{com}}_2

 then

.. math:: m_{12}^2 = \qty( E_1^{\text{com}} + E_2^{\text{com}} )^2

Thus, the invariant mass is the total energy in the centre of mass
frame.

Particle Collisions
-------------------

The vast majority of information about fundamental particles comes from
collision experiments. There are two types of collider used in physics,

Fixed Target
    The target is at rest, while high-energy particles are accelerated
    and fired into it. Examples include the Bevatron, and the SLAC

Colliding Beam
    Two accelerated beams are focussed and fired into one another, so
    that the particles collide, usually in the centre of mass frame. The
    LHC is an example.

In all particle interactions the 4-momentum is conserved, so

.. math::

   \begin{aligned}
   p^{\mu}_1 + p^{\mu}_2 &= p^{\mu}_3 + p^{\mu}_4 \\
   (p_1 + p_2)^2 &= (p_3 + p_4)^2\end{aligned}

 During an interaction the original particles are annihilated, and then
new particles are created from the resulting energy. As a result, for a
final state to be achieved there must be enough energy available to
create the appropriate quantity of mass. Defining the Lorentz invariant,

.. math:: s = (\vec{p}_1 + \vec{p}_2)^2

 For a desired pair of particles to be produced with masses :math:`m_3`
and :math:`m_4` we then require

.. math:: \sqrt{s} \ge m_3 + m_4

| [Creating two particles] We wish to create two particles, each with
  mass :math:`2 \giga
    \electronvolt` by colliding two protons (each :math:`1 \giga
    \electronvolt`).
| The minimum energy in the case of a fixed-target experiment must come
  entirely from the proton in the beam, so

  .. math::

     E_1 = \frac{m_{12}^2 - m_1^2 - m_2^2}{2 m_2} = \frac{(m_3+m_4)^2
         - m_1^2 - m_2^2}{2 m_2}

  thus, :math:`E_1 = 7 \giga \electronvolt`. In the case of colliding
  beams both particles collide in the centre-of-mass frame, and so

  .. math::

     E = \frac{m_1+m_2}{2} \ge \frac{m_3+m_4}{2} = 2 \giga
       \electronvolt

Clearly a much higher beam energy is required in the case of a fixed
target to get the same results, but the engineering challenges involved
with colliding two beams have, in the past, made fixed-target
experiments more feasible.
