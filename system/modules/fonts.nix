{ pkgs, ... }:

{
    fonts = {
        enableDefaultPackages = true;

        packages = with pkgs; [
            nerd-fonts.jetbrains-mono
            google-fonts
        ];

        fontconfig = {
            enable = true;
            defaultFonts = {
                monospace = [ "JetBrainsMono Nerd Font" ];
                sansSerif = [ "JetBrainsMono Nerd Font" ];
                serif = [ "JetBrainsMono Nerd Font" ];
            };
        };
    };
}
