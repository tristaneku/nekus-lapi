{
  wayland.windowManager.hyprland.settings = {
    bind = [
      # Window controls
      "SUPER, P, pseudo" # P - Toggle Pseudo
      "SUPER, 49, centerwindow" # Ü - Center Window
      "SUPER, L, killactive" # L - Close
      "SUPER, 47, togglefloating" # Ö - Toggle Floating
      "SUPER, 48, fullscreen" # Ä - Toggle Fullscreen

      # Switch Layout
      "SUPER, U, exec, hyprctl keyword general:layout scrolling" # Switch Layout to Scrolling
      "SUPER, I, exec, hyprctl keyword general:layout dwindle" # Switch Layout to Dwindle

      # Shortcuts
      "SUPER, RETURN, exec, kitty" # Terminal
      "SUPER CTRL, RETURN, exec, kitty ~/.workstation" # Terminal in Workstation

      "SUPER, Z, exec, zeditor" # Zed
      "SUPER CTRL, Z, exec, zeditor ~/.workstation" # Zed in Workstation

      "SUPER CTRL SHIFT, RETURN, exec, kitty -e bash -c \"nh os switch ~/.workstation\"" # System Rebuild

      "SUPER, SPACE, exec, vicinae toggle" # Launcher

      "SUPER, H, exec, hyprlock" # Lock Screen

      # Screenshot
      "SUPER ALT, 1, exec, hyprshot -m output --clipboard-only" # 1 - Screen
      "SUPER ALT, 2, exec, hyprshot -m window --clipboard-only" # 2 - Window
      "SUPER ALT, 3, exec, hyprshot -m region --clipboard-only" # 3 - Region

      # Switch window focus
      "SUPER, left, movefocus, l"
      "SUPER, right, movefocus, r"
      "SUPER, up, movefocus, u"
      "SUPER, down, movefocus, d"

      # Workspaces wechseln
      "SUPER, 1, workspace, 1"
      "SUPER, 2, workspace, 2"
      "SUPER, 3, workspace, 3"
      "SUPER, 4, workspace, 4"
      "SUPER, 5, workspace, 5"
      "SUPER, 6, workspace, 6"
      "SUPER, 7, workspace, 7"
      "SUPER, 8, workspace, 8"
      "SUPER, 9, workspace, 9"
      "SUPER, 0, workspace, 10"

      # Fenster zu Workspaces verschieben
      "SUPER SHIFT, 1, movetoworkspace, 1"
      "SUPER SHIFT, 2, movetoworkspace, 2"
      "SUPER SHIFT, 3, movetoworkspace, 3"
      "SUPER SHIFT, 4, movetoworkspace, 4"
      "SUPER SHIFT, 5, movetoworkspace, 5"
      "SUPER SHIFT, 6, movetoworkspace, 6"
      "SUPER SHIFT, 7, movetoworkspace, 7"
      "SUPER SHIFT, 8, movetoworkspace, 8"
      "SUPER SHIFT, 9, movetoworkspace, 9"
      "SUPER SHIFT, 0, movetoworkspace, 10"

      "SUPER, T, togglespecialworkspace, tidal"
    ];

    bindm = [
      "SUPER, mouse:272, movewindow"
      "SUPER, mouse:273, resizewindow"
    ];

    bindel = [
      ",XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
      ",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
      ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
      ",XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"

      ",XF86MonBrightnessUp, exec, brightnessctl -e4 -n2 set 5%+"
      ",XF86MonBrightnessDown, exec, brightnessctl -e4 -n2 set 5%-"
    ];

    bindl = [
      ", XF86AudioNext, exec, playerctl next"
      ", XF86AudioPause, exec, playerctl play-pause"
      ", XF86AudioPlay, exec, playerctl play-pause"
      ", XF86AudioPrev, exec, playerctl previous"
    ];
  };
}
