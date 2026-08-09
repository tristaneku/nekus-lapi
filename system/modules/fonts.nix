{ pkgs, ... }:

{
  fonts = {
    enableDefaultPackages = true;

    packages = with pkgs; [
      google-fonts
      NType-82
    ];

    fontconfig = {
      enable = true;
      defaultFonts = {
        monospace = [ "Roboto Mono" ];
        sansSerif = [ "Roboto" ];
        serif = [ "Roboto Serif" ];
      };
    };
  };
}
