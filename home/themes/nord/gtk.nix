{ pkgs, ... }:

{
  gtk = {
    enable = true;

    colorScheme = "dark";
    theme.name = "Adwaita";

    font = {
      name = "JetBrainsMono Nerd Font";
      size = 11;
    };

    iconTheme = {
      name = "Adwaita";
      package = pkgs.adwaita-icon-theme;
    };

    cursorTheme = {
      name = "phinger-cursors-dark";
      package = pkgs.phinger-cursors;
      size = 16;
    };
  };
}
