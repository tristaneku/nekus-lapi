{
  wayland.windowManager.hyprland.settings = {
    windowrule = [
      {
        name = "Prevent all windows from reacting to maximize events";
        suppress_event = "maximize";
        match = {
          class = ".*";
        };
      }

      {
        name = "Don't give focus to invisible or dummy XWayland floating windows";
        no_focus = true;
        match = {
          class = "^$";
          title = "^$";
          xwayland = true;
          float = true;
          fullscreen = false;
          pin = false;
        };
      }

      {
        name = "TIDAL";
        match.class = "com.mastermindzh.tidal-hifi";

        pseudo = "on";
        size = "1400 840";
        workspace = "special:tidal silent";
      }

      {
        name = "Kitty";
        match.class = "kitty";

        pseudo = "on";
        size = "1080 620";
      }

      {
        name = "Nautilus";
        match.class = "org.gnome.Nautilus";

        pseudo = "on";
        size = "1100 680";
      }

      {
        name = "Prism Launcher";
        match.class = "org.prismlauncher.PrismLauncher";

        pseudo = "on";
        size = "800 800";
      }

      {
        name = "Telegram";
        match.class = "org.telegram.desktop";

        pseudo = "on";
        size = "940 800";
      }

      {
        name = "Calls";
        match.class = "org.gnome.Calls";

        float = "on";
        size = "360 680";
      }
    ];

    layerrule = [
      {
        name = "Vicinae";
        match.namespace = "vicinae";

        blur = "on";
        no_anim = "on";
        ignore_alpha = 0;
      }

      {
        name = "Dunst";
        match.namespace = "notifications";

        animation = "slide right";
      }

      {
        name = "eww";
        match.namespace = "gtk-layer-shell";

        no_anim = "on";
      }
    ];
  };
}
