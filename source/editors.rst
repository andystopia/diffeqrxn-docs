Editor Support
==============

.. toctree ::
   :caption: Export Formats:

   helix-editor


This application sadly does not have great editor support, but there is a 
tree sitter grammar for it (which some editors use for syntax highlighting).

An LSP is not implemented yet, but I believe one wouldn't be terribly hard to implement, 
the AST maintains source spans, errors are caught and standarized with ``diagnose``, which appears
to be able to be converted to LSP diagnostics. Developing an LSP was just not a priority, but it 
certainly doesn't seem like it'd be hard, but it's lack of existence does make it hard to support
VSCode.


I write my code in the Helix Editor, which uses a tree sitter for syntax highlighter, and
that's all I really needed to define the models, and I will open source the tree sitter for it.





