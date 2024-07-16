{
  description = "FIXME: A basic starter devshell template";

  # Nixpkgs / NixOS version to use.
  inputs.nixpkgs.url = "nixpkgs/nixos-24.05";

  outputs = {
    self,
    nixpkgs,
  }: let
    # System types to support.
    supportedSystems = ["x86_64-linux" "x86_64-darwin" "aarch64-linux" "aarch64-darwin"];

    # Helper function to generate an attrset '{ x86_64-linux = f "x86_64-linux"; ... }'.
    forAllSystems = nixpkgs.lib.genAttrs supportedSystems;

    # Nixpkgs instantiated for supported system types.
    nixpkgsFor = forAllSystems (system: import nixpkgs {inherit system;});
  in {
    # Provide some binary packages for selected system types.
    packages = forAllSystems (system: let
      pkgs = nixpkgsFor.${system};
    in {
      default = pkgs.stdenv.mkDerivation {
        src = ./.;

        name = "diffeqrxn-docs";
        buildInputs = with pkgs; [
          sphinx
          python311Packages.furo
        ];

        buildPhase = ''
          make html
        '';

        installPhase = ''
          cp -R build/html $out/
        '';
      };
    });


    # Add dependencies that are only needed for development
    devShells = forAllSystems (system: let
      pkgs = nixpkgsFor.${system};
    in {
      default = pkgs.mkShell {
        buildInputs = with pkgs; [
          starship
          # put other package below
          sphinx
          python311Packages.furo
        ];

        shellHook = "
              eval \"$(starship init bash)\";
            ";
      };
      devtest = pkgs.mkShell {
        buildInputs = with pkgs; [
          starship
          # put other package below
          sphinx
          act
          python311Packages.furo
        ];

        shellHook = "
              eval \"$(starship init bash)\";
            ";
      };

    });

    formatter = forAllSystems (
      system:
        nixpkgsFor.${system}.alejandra
    );
  };
}
