{
  description = "A very basic nixvim";

  inputs.nixvim = {
    url = "github:nix-community/nixvim";
    inputs.nixpkgs.follows = "nixpkgs";
  };
  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.nixpkgs.url = "github:nixOS/nixpkgs/nixos-unstable";

  outputs =
    inputs:
    inputs.flake-utils.lib.eachDefaultSystem (system:
    let
      config = import ./config.nix;
      nixvim' = inputs.nixvim.legacyPackages."${system}";
      nvim = nixvim'.makeNixvim config;
    in
    {
      packages.default = nvim;
    });
}
