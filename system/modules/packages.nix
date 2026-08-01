{ inputs, ... }:

{
    nixpkgs = {
        config = {
            allowUnfree = true;
            android_sdk.accept_license = true;
            permittedInsecurePackages = [
                "googleearth-pro-7.3.7.1155"
                "electron-39.8.10"
            ];
        };

        overlays = [
            (self: super: {
                everforest-gtk = super.callPackage ../../pkgs/everforest-gtk.nix {};
                soundcloud = super.callPackage ../../pkgs/soundcloud.nix {};
            })
        ];
    };
}
