{
  description = "Neku's Workstation";

  nixConfig = {
    extra-substituters = [
      "https://vicinae.cachix.org"
    ];

    extra-trusted-public-keys = [
      "vicinae.cachix.org-1:1kDrfienkGHPYbkpNj1mWTr7Fm1+zcenzgTizIcI3oc="
    ];
  };

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flatpaks.url = "github:gmodena/nix-flatpak/?ref=latest";
    nix-vscode-extensions.url = "github:nix-community/nix-vscode-extensions";
    vicinae.url = "github:vicinaehq/vicinae";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    vicinae-extensions = {
      url = "github:vicinaehq/extensions";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs@{
      self,
      nixpkgs,
      home-manager,
      ...
    }:
    let
      system = "x86_64-linux";
      stateVersion = "25.11";

      username = "neku";
      hostname = "nekus-lapi";

      theme = "nord";

      partitions = {
        boot = "258D-0A8B";
        root = "5ebde8c4-576a-4558-8145-78ea1f2373ce";
        swap = "9f93cca3-d8bc-4f31-b78e-16781f3eed13";
      };
    in
    {
      nixosConfigurations = {
        "${hostname}" = nixpkgs.lib.nixosSystem {
          inherit system;

          specialArgs = {
            inherit
              system
              stateVersion
              hostname
              username
              theme
              partitions
              inputs
              ;
          };

          modules = [
            # System Config
            ./system/config.nix

            # Home Config
            home-manager.nixosModules.home-manager
            {
              home-manager = {
                users.${username} = ./home/config.nix;
                backupFileExtension = "backup";
                useGlobalPkgs = true;
                useUserPackages = true;
                extraSpecialArgs = {
                  inherit
                    stateVersion
                    username
                    theme
                    inputs
                    ;
                };
              };
            }
          ];
        };
      };
    };
}
