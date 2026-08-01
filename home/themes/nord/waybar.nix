{ colors, ... }:

{
  programs.waybar = {
    enable = true;

    settings = {
      mainBar = {
        output = [ "eDP-1" ];
        layer = "top";
        position = "top";
        height = 28;

        modules-left = [ "hyprland/workspaces" ];
        modules-center = [
          "clock"
          "mpris"
        ];
        modules-right = [
          "tray"
          "custom/hypridle"
          "pulseaudio"
          "battery"
        ];

        clock = {
          format = "{:%H:%M}";
          tooltip-format = "{:%d %B (%m) %Y %H:%M}";
        };

        mpris.format = "󰓀  {artist} - {title}";

        battery = {
          format = "{icon} {capacity}%";
          format-charging = "󰂄 {capacity}%";
          format-icons = [
            "󰁺"
            "󰁼"
            "󰁾"
            "󰂀"
            "󰁹"
          ];
          states = {
            warning = 15;
            critical = 5;
          };
        };

        pulseaudio = {
          format = "󰓃 {volume}%";
          format-muted = "󰓄 muted";
        };

        "hyprland/workspaces" = {
          all-outputs = true;
          active-only = false;
          "on-click" = "activate";
          "format" = "{icon}";
          "format-icons" = {
            "default" = "";
            "1" = "1";
            "2" = "2";
            "3" = "3";
            "4" = "4";
            "5" = "5";
            "6" = "6";
            "7" = "7";
            "8" = "8";
            "9" = "9";
            "10" = "0";
            "active" = "󱓻";
          };
        };

        "custom/hypridle" = {
          exec = "pgrep -x hypridle >/dev/null && echo 󰅶 || echo 󰾪";
          on-click = "systemctl --user is-active --quiet hypridle && systemctl --user stop hypridle || systemctl --user start hypridle";
          tooltip-format = "Pause Idle";
          interval = 2;
        };
      };
    };

    style = ''
      * {
          background-color: ${colors.background_dim.hex};
          color: ${colors.foreground.hex};

          border: none;
          border-radius: 0;
          min-height: 0;
          font-family: 'JetBrainsMono Nerd Font';
          font-size: 12px;
      }

      .modules-left {
          margin-left: 8px;
      }

      .modules-center {
          margin-left: 8px;
      }

      .modules-right {
          margin-right: 8px;
      }

      #workspaces button {
          all: initial;
          padding: 0 6px;
          margin: 0 1.5px;
          min-width: 9px;
      }

      #workspaces button.empty {
          opacity: 0.5;
      }

      #tray,
      #pulseaudio,
      #battery,
      #custom-hypridle {
          min-width: 12px;
          margin: 0 7.5px;
      }

      #pulseaudio.muted {
          color: ${colors.purple.hex};
      }

      #battery.warning:not(.charging) {
          color: ${colors.orange.hex};
      }

      #battery.critical:not(.charging) {
          color: ${colors.red.hex};
      }

      tooltip {
          padding: 2px;
      }

      #clock {
          margin-right: 20px;
      }

      .hidden {
          opacity: 0;
      }
    '';
  };
}
