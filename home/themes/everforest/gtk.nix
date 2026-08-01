{ pkgs, ... }:

{
    gtk = {
        enable = true;

        font = {
            name = "JetBrainsMono Nerd Font";
            size = 11;
          };

        theme = {
            name = "Everforest-Dark";
            package = pkgs.everforest-gtk;
        };

        iconTheme = {
            name = "Everforest-Dark";
            package = pkgs.everforest-gtk;
        };

        cursorTheme = {
            name = "everforest-cursors";
            package = pkgs.everforest-cursors;
            size = 24;
        };
    };
}
