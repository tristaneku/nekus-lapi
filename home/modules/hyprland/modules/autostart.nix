{
  wayland.windowManager.hyprland.settings.exec-once = [
    "systemctl --user start hyprpolkitagent"
    "pidof hyprpaper || hyprpaper"
    "hyprpanel"
    "waybar"
    "eww open overlay"
    "linphone"
  ];
}
