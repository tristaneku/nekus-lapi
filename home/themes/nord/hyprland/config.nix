{
    imports = [
        ./modules/animations.nix
        ./modules/layout.nix
        ./modules/look.nix
        ./modules/plugins.nix
        ./modules/windowrules.nix
    ];

    wayland.windowManager.hyprland.settings = {
        env = [
            "XCURSOR_THEME,everforest-cursors"
            "XCURSOR_SIZE,24"
            "HYPRCURSOR_SIZE,24"
        ];

        misc = {
            force_default_wallpaper = 0;
            disable_hyprland_logo = true;
        };

        gesture = [ "3, horizontal, workspace" ];
    };
}
