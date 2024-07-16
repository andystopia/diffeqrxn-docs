Computing Parameters
====================


While it's handy that DiffEqRxn can figure out which parameters you need from the 
parameters passed to macros and as rates to chemical expressions, many systems
have a set of parameters, and then compute more parameters from those, to keep 
the parameter count low / enforce invariants. Additionally, if a parameter is a function, 
using the rate syntax has no way of really passing arguments, like time. 

So, in efforts to avoid writing a full programming language that nobody would like to 
learn, it was decided to do 80% of the work, and let the user do the non-tedious 20% themselves.

Implicit Parameters 
-------------------

If your model depends on a parameter that is otherwise not mentioned in the model, 
the syntax to indicate that you would still like that parameter included is written:

.. code :: text

	implicit k_rx

Where :math:`k_{rx}` is the parameter that is used, but not referred to anywhere's in the actual 
model definition.



Computed Parameters
-------------------

A computed parameter is sort of opposite to an implicit parameter, it's definition is: a parameter
that *is* used in the model, but should not be included in the set of parameters passed the differential equation. This is 
because this parameter is computable from the other parameters, state, and time. Many times, if there 
is need for an implicit parameter, then declaring a computed parameter is also required.

The syntax for a computed parameter is (on it's own line):

.. code :: text

	computed k_fx

Where :math:`k_{fx}` is the parameter that is being computed from any combination of parameters, 
state, and time.
