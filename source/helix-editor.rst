Helix Editor
============

DiffEqRxn has support for the Helix editor for syntax highlighting
(and some other editor configuration)




Acquiring the Tree Sitter Grammar.
----------------------------------

Download the tree sitter grammar (add the link to github), then 
cd into the directory and run each of the following commands


.. code :: bash 

        cp ./queries/* $HOME/.config/helix/runtime/queries/diffeqrxn/
        hx --grammar fetch
        hx --grammar build


Tell Helix About It 
-------------------

Add the following to ``~/.config/helix/languages.toml``:

.. code :: toml

	[[language]]
	name = "diffeqrxn"
	scope = "source.diffeqrxn"
	comment-token = '#'
	file-types = ["rxn"]
	roots = []
	language-servers = []


	[[grammar]]
	name = "diffeqrxn"
	source = {path = "<PATH TO DOWNLOADED TREE SITTER>"}


Restart Helix!
--------------

Your grammar should now be installed. Please open an issue if this doesn't work for you.
