Holes in the Model (void)
=========================

While, in an optimal world, we could simulate everything down to our best understanding of physics, 
for computational reasons, we cannot do this, and we must make simplifying assumptions for the model, 
which allows us a model which is useful as opposed to a model which doesn't exist. The same ideology 
is chosen by DiffEqRxn.


Chemicals From "Nowhere"
------------------------

Let's say that we know that some chemical from elsewhere in the system is being produced at 
a given rate :math:`p_1`. Using the syntax from the previous chapter would make this ambiguous / impossible, 
we're always relative to some other chemical in those equations.

To remedy this issue, we introduce the ``void`` keyword.  

This keyword has some special behaviors, and, in exchange, some special rules.

Rules for Using ``void``
------------------------


1. Void can only occupy it's side of the equation, so ``void + A`` would not be valid in this model, 
and the model should fail to parse.

2. The side opposite the void can be neither void nor anything other than produced chemical species

``void`` behavior
-----------------

Getting chemicals from the ``void`` 
------------------------------------

Chemicals which are "created from the void" are defined as so: 


.. code :: text

	void ==> A {p_1}


This declares that the chemical species ``A`` is made at a rate of :math:`p_1`, where :math:`p_1` is in :math:`\rm{units} \cdot \rm{sec}^{-1}`.

Expressed in differential equations this statement is equivalent to: 

.. math :: 

	\frac{\mathrm{d} A}{\mathrm{d} t} = p_1 

Moving chemicals into the ``void``
----------------------------------

If we need a chemical to be lost at a certain rate, but not be converted to another chemical, we can send it to the void: 

.. code :: text

	A ==> void {l_1}


As opposed to the previous case, this case doesn't decrease at a constant rate but rather
proportional to how much A there is in the system. Expressed in differential equations, this looks like:

.. math :: 

	\frac{\mathrm{d} A}{\mathrm{d} t} = l_1 \cdot A

.. note :: 
	Were it to be a constant rate, if :math:`l_1 > p_1`, then the solution would be non-sensical
