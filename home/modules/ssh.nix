{
    programs.ssh = {
        enable = true;

        extraConfig = ''
            Host *
                IdentityAgent ~/.bitwarden-ssh-agent.sock
                SetEnv TERM=xterm-256color
        '';
    };
}
