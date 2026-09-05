{ ... }:

{

    imports = [
        ./modules/extentions.nix
        ./modules/keymap.nix
        ./modules/user-settings.nix
    ];

    programs.zed-editor.enable = true;
}
