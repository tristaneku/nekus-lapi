{ pkgs, ... }:

{
    imports = [
        ./modules/autostart.nix
        ./modules/bindings.nix
    ];

    wayland.windowManager.hyprland = {
        enable = true;
        systemd.enable = true;

        settings = {
            monitor = [
                "eDP-1, 1920x1080@60, 0x1080, 1"
                "HDMI-A-1, 1920x1080@100, 0x0, 1"
            ];

            # Disable hardware cursor
            cursor."no_hardware_cursors" = true;

            input = {
                kb_layout = "de";
                follow_mouse = 1;
                sensitivity = 0;
                touchpad.natural_scroll = true;
            };
        };
    };
}
