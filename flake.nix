{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-22.05";
  outputs = { self, nixpkgs }: {

    nixosConfigurations.access = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules =
        [ ./default.nix ];
    };

  };
}
