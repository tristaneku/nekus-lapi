{
  stateVersion,
  pkgs,
  hostname,
  username,
  ...
}:

{
  imports = [
    ./modules/boot.nix
    ./modules/console.nix
    ./modules/fonts.nix
    ./modules/locale.nix
    ./modules/packages.nix
    ./modules/power-management.nix
  ];

  nix.settings = {
    experimental-features = [
      "nix-command"
      "flakes"
    ];
    trusted-users = [
      "root"
      "neku"
    ];
    accept-flake-config = true;
  };

  system.stateVersion = stateVersion;

  networking = {
    hostName = hostname;
    networkmanager.enable = true;
  };

  security = {
    rtkit.enable = true;
    polkit.enable = true;

    tpm2 = {
      enable = true;
      pkcs11.enable = true;
      tctiEnvironment.enable = true;
    };
  };

  services = {
    # Greeter
    displayManager.ly.enable = true;

    xserver = {
      enable = true;
      videoDrivers = [ "amdgpu" ];
    };

    # Gnome Virtual File System
    gvfs.enable = true;

    avahi = {
      enable = true;
      nssmdns4 = true;
      openFirewall = true;
    };

    printing = {
      enable = true;
      drivers = with pkgs; [
        cnijfilter2
      ];
    };

    # Sound
    pulseaudio.enable = false;
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };

    gnome.gnome-keyring.enable = true;
    dbus.enable = true;
    upower.enable = true;
    flatpak.enable = true;
    tailscale.enable = true;
  };

  virtualisation = {
    docker.enable = true;
    podman.enable = true;
  };

  hardware = {
    opentabletdriver.enable = true;

    bluetooth.enable = true;

    graphics = {
      enable = true;

      extraPackages = with pkgs; [
        rocmPackages.clr.icd
      ];
    };
  };

  programs = {
    # Window Manager
    hyprland.enable = true;

    # Default Shell
    zsh.enable = true;

    dconf.enable = true;

    nix-ld.enable = true;

    obs-studio = {
      enable = true;
      enableVirtualCamera = true;
    };
  };

  users.users."${username}" = {
    isNormalUser = true;
    description = hostname;
    extraGroups = [
      "networkmanager"
      "wheel"
      "dialout"
      "docker"
      "libvirtd"
      "lpadmin"
    ];
    shell = pkgs.zsh;
  };

  # System Packages
  environment.systemPackages = with pkgs; [
    sbctl
    git
    nh
    devenv
    SDL2
    socat
    kitty
    hyprpaper
    waybar
    hyprshot
    eww
    hyprlock
    brightnessctl
    playerctl
    hyprpolkitagent
    hypridle
    wl-clipboard
    nautilus
    eog
    vlc
    vicinae
    dunst
    libnotify
    crosspipe
    pulseaudio
    distrobox
    nixd
    nil
  ];
}
