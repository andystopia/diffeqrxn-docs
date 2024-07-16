Exporting (CLI)
===============


.. toctree ::
   :caption: Export Formats:

   exporting-julia

At it's heart, DiffEqRxn is a codegen application. 
Most of it's usefulness comes from it's ability to take model definition files 
and then rewrite them in a typesetter / programming language where they can be evaluated. 


The Export Subcommand
---------------------

Export Help 
^^^^^^^^^^^


The most important subcommand for exporting is the ``export`` subcommand, to invoke this, in your shell run: 

.. code:: text

   diffeqrxn export --help 


This should show the help for this export subcommand


Exporting Models
^^^^^^^^^^^^^^^^

The syntax for exporting is (in the shell):


.. code:: text

   diffeqrxn export <MODEL_FILE> <MODEL_NAME> --format <FORMAT>

Where the parts surrounded with < > are placeholders for substitution, do not include the angle 
brackets in the actual command.


The following exports the model file ``becker.rxn`` to a model named Becker which is written in the ascii format 
to the terminal, where it can be copy and pasted.

.. code:: text

   diffeqrxn export becker.rxn Becker --format ascii




