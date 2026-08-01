{ colors, ... }:

{
    wayland.windowManager.hyprland.settings = {
        general = {
            gaps_in = 20;
            gaps_out = 40;
            border_size = 2;
            "col.active_border" = colors.foreground.rgb;
            "col.inactive_border" = colors.gray_1.rgb;
            resize_on_border = false;
            allow_tearing = false;
            layout = "dwindle";
        };

        decoration = {
            active_opacity = 1.0;
            inactive_opacity = 0.8;
            blur = {
                enabled = true;
                size = 4;
            };
        };
    };
}
