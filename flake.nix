{
  description = "omega's nixvim config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, flake-utils, nixvim }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        config = import ./config;
        pkgs = import nixpkgs { inherit system; };
        nixvimLib = nixvim.lib.${system};
        nvim = nixvim.legacyPackages.${system}.makeNixvimWithModule {
          inherit pkgs;
          module = config;
        };
        mkDevShell = import ./shell.nix {
          inherit pkgs;
          inherit nvim;
        };
      in
      {
        checks.default = nixvimLib.check.mkTestDerivationFromNvim {
          inherit nvim;
          name = "A nixvim configuration";
        };

        homeManagerModules.nixvim = nixvim.homeManagerModules.nixvim;

        packages.default = nvim;

        devShells.default = import ./shell.nix { inherit pkgs; };
      });
}
