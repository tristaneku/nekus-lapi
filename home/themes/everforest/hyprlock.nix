{ colors, ... }:

{
  programs.hyprlock = {
    enable = true;

    settings = {
      general.hide_cursor = true;

      animations = {
        enabled = true;

        fade_in = {
          duration = 300;
          bezier = "easeOutQuint";
        };

        fade_out = {
          duration = 300;
          bezier = "easeOutQuint";
        };
      };

      background = [
        {
          path = "~/.workstation/assets/themes/everforest/wallpaper.jpg";
        }
        {
          z-index = 0;
          color = "rgba(0, 0, 0, 0.8)";
        }
      ];

      label = {
        monitor = "HDMI-A-1";
        text = "$TIME";
        font_size = 80;
        font_family = "NType 82 Headline";

        position = "80, 80";
        halign = "left";
        valign = "bottom";
      };

      input-field = [
        {
          size = "200, 40";
          position = "0, 80";
          monitor = "eDP-1";
          halign = "center";
          valign = "bottom";
          font_color = colors.foreground.rgb;
          rounding = 0;
          dots_rounding = false;
          outline_thickness = 0;
          fail_color = "none";
          check_color = "none";
          inner_color = "none";
          outer_color = "none";
          fail_text = "";
          placeholder_text = "";
        }
      ];
    };
  };
}
