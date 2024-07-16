Non Linearity In The System (Macros)
====================================

While the past two sections do a great job at expressing mostly linear systems,
many models require non-linear behavior. Currently the only behavior implemented is 
called Hill Kinetics, but more can be added by editing the source code, and some thought 
has been put into allowing adding via Lua, but the overall pain was decided not worth it 
for the project that we're working on.

Macros
------

Maros, which essentially work like function calls are the way that 
DiffEqRxn expresses non-linearity. Internally, they manipulate the symbols
they are passed into a valid algebraic expression, avoiding equation writing 
mistakes and looking up equations 


An Example Macro: ``HillSum``

.. code :: text

	HillSum([A, B], rate = rate, n = n) ==> C {R_1}

So we can see that a list of chemicals/rates is surrounded by brackets, and the 
syntax supports positional (the list) and named (rate = rate) parameters.


Macro Limitations
-----------------

1. DiffEqRxn allows only one macro per equation
2. DiffEqRxn doesn't allow Macros to nest
3. DiffEqRxn macro's cannot be used in equations with other macros, or which use `void`
