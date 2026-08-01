{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    oh-my-zsh.enable = true;

    plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
    ];

    shellAliases = {
      files = "nautilus";
      zed = "zeditor";
    };

    initContent = ''
      source ~/.p10k.zsh
      fastfetch
    '';
  };

  # p10k Configuration
  home.file.".p10k.zsh".source = modules/p10k.zsh;
}
