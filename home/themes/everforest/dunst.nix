{ colors, ... }:

{
    services.dunst = {
        enable = true;
        settings = {
            global = {
                follow = "mouse";
                width = 360;
                offset = "(0,60)";
                origin = "top-right";
                frame_width = 0;
                font = "JetBrainsMono Nerd Font 11";
            };

            urgency_normal = {
                background = colors.background_1.hex;
                foreground = colors.foreground.hex;
                timeout = 2;
            };
        };
    };
}
