A Single Source Of Truth
========================

DiffEqRxn has a model definition file that is written 
in a plaintext format with an extension of rxn. 


The model file is one chemical reaction per line.


Defining a forwards chemical reaction.
--------------------------------------

A chemical reaction is defined as follows: 

.. code-block:: text

    A + B ==> C + B {f_1}


This is probably the simplest definition possible. It states that A + B 
creates the species C + B at a rate of :math:`f_1`.


Defining a reversible chemical reaction.
----------------------------------------

A more reversible reaction looks like so:

.. code-block:: text
	
	A + B <==> C + B {f_1, r_1}

The above definition takes the is exactly the same as the one above, but
it also includes a reverse reaction at a rate of :math:`r_1`.

.. note::
    The above reaction is shorthand for:

    .. code-block:: text 

        A + B ==> C + B {f_1}
        A + B <== C + B {r_1}
    
    The whole point of this program is to make writing down chemical equations simpler, so similar "syntactic sugar" is commonly used.



.. note ::
	Chemicals can be re-used across multiple reactions, so there's never a reason to cram everything
	into one big chemical expression

Moving forwards.
----------------

We now have all the tools we need to specify linear systems of mass action kinetics; however, 
the next chapters will cover common useful topics such as holes in the model and non-linearity (such as Hill Kinetics).

