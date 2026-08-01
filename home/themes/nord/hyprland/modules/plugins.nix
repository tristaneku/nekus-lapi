{ pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    plugins = with pkgs.hyprlandPlugins; [
      hypr-dynamic-cursors
    ];

    settings = {
      "plugin:dynamic-cursors" = {
        enabled = true;
        mode = "tilt";
        shake.enabled = false;
      };
    };
  };
}
