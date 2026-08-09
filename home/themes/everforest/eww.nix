{ colors, ... }:

{
  xdg.configFile = {
    # Config
    "eww/eww.yuck".text = ''

      (defwindow overlay
          :monitor "HDMI-A-1"
          :stacking "bg"
          :focusable "none"
          :geometry (geometry
                  :x "80px"
                  :y "80px")

          (box
              :orientation "v"
              :spacing 12
              :space-evenly false

              (w_date)
              (w_clock)
              (w_media)
          )
      )

      (defwidget w_clock []
          (label
              :class "w_clock"
              :halign "start"
              :text v_time
          )
      )

      (defwidget w_date []
          (label
              :class "w_date"
              :halign "start"
              :text v_date
          )
      )

      (defwidget w_media []
          (label
              :class "w_media"
              :halign "start"
              :text v_music
          )
      )

      (deflisten v_music
          :initial ""

          "playerctl --follow metadata --format '󰓀    {{ artist }} - {{ title }}' || true"
      )

      (defpoll v_time
          :interval "1s"
          :initial "initial-value"

          "date '+%H:%M'"
      )

      (defpoll v_date
          :interval "60s"
          :initial "initial-value"

          "date '+%d. %B %Y'"
      )
    '';

    # Styles
    "eww/eww.scss".text = ''
      .overlay {
          background: none;

          * {
              color: ${colors.background_2.hex};
              font-size: 16px;
              font-family: 'Roboto';
          }

          .w_clock {
              font-size: 80px;
              font-family: 'NType 82 Headline';
          }
      }
    '';
  };
}
