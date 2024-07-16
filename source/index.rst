.. DiffEqRxn documentation master file, created by
   sphinx-quickstart on Mon Jul 15 16:41:49 2024.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

DiffEqRxn : A Faster Way To Write Mass Action Kinetics!
#######################################################

.. toctree::
   :maxdepth: 2

   installation
   theory
   model-holes
   nonlinearity
   parameter-dependencies
   exporting


What is DiffEqRxn?
******************

It's a way to represent a mass action model textually and then export
equivalent forms to typesetters and programming languages.

Why create DiffEqRxn?
*********************


Mass action kinetics have a lot of repetition and tediously updated equations. 
What's more is that all of this work needs to be repeated multiple times across
languages and typesetters and I have a couple of notable *skill issues* when writing 
them. 

#. The amount of tedium means that often global variables sneak into the equations.
#. Copying the model into a language from a typeset definition often leads to a simple typo which subtley bugs the model with no immediate way to spot it.
#. It's hard to see the dynamics of the system immediately just from the equations; while possible, I get lost in the sea of symbols that define the models.
#. Tedium leads to shortcuts
#. Computers do tedious things. Humans do creative things.

Use Cases.
**********

This program was developed for use with systems biology where
reactions are often expressed as a set of differential equations, and 
our use cases uses it for modeling circadian systems and light entrainment.







