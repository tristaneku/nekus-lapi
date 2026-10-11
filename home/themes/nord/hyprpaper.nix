let
  wallpaper = "~/.nekus-lapi/assets/themes/nord/wallpaper.png";
in
{
  services.hyprpaper = {
    enable = true;

    settings = {
      splash = false;

      wallpaper = [
        {
          monitor = "eDP-1";
          path = "${wallpaper}";
        }
        {
          monitor = "HDMI-A-1";
          path = "${wallpaper}";
        }
      ];
    };
  };
}
