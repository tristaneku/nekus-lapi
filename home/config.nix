{
  stateVersion,
  pkgs,
  username,
  inputs,
  ...
}:

{
  imports = [
    inputs.flatpaks.homeManagerModules.nix-flatpak
    inputs.vicinae.homeManagerModules.default

    ./modules/hyprland/config.nix
    ./modules/zsh/config.nix
    ./modules/git.nix
    ./modules/hypridle.nix
    ./modules/obs.nix
    ./modules/ssh.nix
    ./modules/vicinae.nix
    ./modules/xdg.nix
    ./modules/zed.nix

    ./themes/config.nix
  ];

  home = {
    inherit stateVersion username;

    homeDirectory = "/home/${username}";

    # User Packages
    packages = with pkgs; [
      bitwarden-desktop
      bitwarden-cli
      thunderbird
      zed-editor
      gnome-disk-utility
      fastfetch
      nvtopPackages.amd
      htop
      hyprpicker
      soundcloud
      gh
      glab
      p7zip
      osu-lazer-bin
      linphonePackages.linphone-desktop
      naps2
      yt-dlp
      googleearth-pro
    ];
  };

  # Flatpaks
  services.flatpak.packages = [
    "md.obsidian.Obsidian"
    "org.telegram.desktop"
    "com.valvesoftware.Steam"
    "org.gimp.GIMP"
    "org.audacityteam.Audacity"
    "app.zen_browser.zen"
    "com.google.Chrome"
    "dev.vencord.Vesktop"
    "org.prismlauncher.PrismLauncher"
    "org.blender.Blender"
    "org.gnome.SimpleScan"
    "org.vinegarhq.Sober"
  ];
}
