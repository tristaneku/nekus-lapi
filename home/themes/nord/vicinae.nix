{
  colors,
  ...
}:

{
  services.vicinae.settings = {
    theme.dark = {
      name = "everforest";
      icon_theme = "default";
    };

    font.normal = {
      family = "Roboto";
      size = 10.5;
    };

    launcher_window = {
      opacity = 0.9;
    };
  };

  home.file.".local/share/vicinae/themes/everforest.toml".text = ''
    [meta]
    name = "Everforest"
    description = "Everforest is a green based color scheme; it's designed to be warm and soft in order to protect developers' eyes."
    variant = "dark"
    inherits = "vicinae-dark"

    [colors.core]
    accent = "${colors.green.hex}"
    accent_foreground = "${colors.background_dim.hex}"
    background = "${colors.background_dim.hex}"
    foreground = "${colors.foreground.hex}"
    secondary_background = "${colors.background_0.hex}"
    border = "${colors.gray_0.hex}"

    [colors.main_window]
    border = "${colors.background_0.hex}"

    [colors.accents]
    blue = "${colors.blue.hex}"
    green = "${colors.green.hex}"
    magenta = "${colors.purple.hex}"
    orange = "${colors.orange.hex}"
    red = "${colors.red.hex}"
    yellow = "${colors.yellow.hex}"
    cyan = "${colors.aqua.hex}"
    purple = "${colors.purple.hex}"
  '';
}
