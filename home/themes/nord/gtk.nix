{ pkgs, ... }:

{
  gtk = {
    enable = true;

    font = {
      name = "JetBrainsMono Nerd Font";
      size = 11;
    };

    theme = {
      name = "Qogir-Dark";
      package = pkgs.qogir-theme;
    };

    iconTheme = {
      name = "Nordic";
      package = pkgs.nordic;
    };

    cursorTheme = {
      name = "phinger-cursors-dark";
      package = pkgs.phinger-cursors;
      size = 24;
    };
  };
}
