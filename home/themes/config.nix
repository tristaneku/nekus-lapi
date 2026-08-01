{ theme, ... }:

{
    _module.args.colors = import (../../assets/themes + "/${theme}/colors.nix");

    imports = map (x: ./. + "/${theme}/${x}") [
        "hyprland/config.nix"
        "dunst.nix"
        "eww.nix"
        "gtk.nix"
        "hyprlock.nix"
        "hyprpaper.nix"
        "kitty.nix"
        "vicinae.nix"
        "waybar.nix"
        "zed.nix"
    ];
}
