{ pkgs, ... }:

{
  fonts = {
    enableDefaultPackages = true;

    packages = with pkgs; [
      nerd-fonts
      google-fonts
      NType-82
    ];

    fontconfig = {
      enable = true;
      defaultFonts = {
        sansSerif = [ "Roboto" ];
        serif = [ "Roboto Serif" ];
        monospace = [ "Roboto Mono" ];
      };
    };
  };
}
