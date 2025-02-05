{
  description = "A very basic nixvim";

  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.nixpkgs.url = "github:nixOS/nixpkgs/nixos-unstable";
  inputs.nixvim = {
    url = "github:nix-community/nixvim";
    # inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs =
    inputs:
    inputs.flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = import inputs.nixpkgs { inherit system; };
      config = import ./config.nix { inherit pkgs; };
      nixvim' = inputs.nixvim.legacyPackages."${system}";
      nvim = nixvim'.makeNixvim config;
    in
    {
      packages.default = nvim;
    });
}
