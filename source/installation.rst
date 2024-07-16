
Installation
#######################################################





Via Github + Cabal.
*******************
1. Download and install `git <https://git-scm.com/>`_

2. Download and Install the `Haskell Tool Stack <https://www.haskell.org/ghcup/>`_

3. Then restart the shell and run: 

.. code-block:: bash

    git clone https://github.com/andystopia/diffeqrxn.git
    cd diffeqrxn
    cabal build

    ./diffeqrxn --help


Via Nix Flakes (Windows WSL, MacOS, Linux)
******************************************

This is probably the simplest and most reproducible way 
to run this program. 

1. Download and Install the `Nix Package Manager <https://nixos.org/download/>`_

2. `Enable Flakes <https://nixos.wiki/wiki/Flakes>`_  (if you haven't already)

.. code-block:: bash

    echo 'experimental-features = nix-command flakes' >> /etc/nix/nix.conf

3. Run the following command to run the program.

.. code-block:: bash
    
    nix run github:andystopia/diffeqrxn -- --help



