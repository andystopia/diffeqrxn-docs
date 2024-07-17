Exporting To Julia
==================

The Julia Programming Language has a mature and advanced ecosystem for evaluating differential equations. This
has made it an excellent export candidate for DiffEqRxn.


To export to Julia, we can use the following command in the shell:  

.. code:: text

   diffeqrxn export <MODEL_FILE> <MODEL_NAME> --format julia

This will print a Julia definition to the terminal.

Using the Julia Export Format
-----------------------------

Because DiffEqRxn only get's us 80% of the way there for most use cases, we still have a little 
work to do. You can define defaults in the parameter / state structs by adding `= 3.0` after any variable
to set it to 3.0.

While the derivative function will be generated (as the model name prefixed with ``d``), if it makes 
use of computed and implicit variables, there will be a variable referred to in the function 
called ``c`` (for computed), which will not be defined, it is up to the user to define this variable,
and it should have the type of ``<ModelName>ComputeParameters``. A common pattern for this is to, 
right at the beginning of the function is to write: 



.. code:: julia

   c = compute<ModelName>Parameters(s, p, t);

and then define: 


.. code:: julia

	function compute<ModelName>Parameters(s, p, t)
		return <ModelName>ComputedParameters(
			# fill your parameters in here
		)
	end


Replace ``<ModelName>`` with the actual name of the model that you passed to the cli, and you have
a basic framework for creating a computed parameter set from the parameters that are
generated directly by DiffEqRxn.

