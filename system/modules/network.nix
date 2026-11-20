{hostname, ...}:

{
    networking = {
      hostName = hostname;
      networkmanager.enable = true;

      firewall.allowedTCPPorts = [ 3000 ];
    };

    services.avahi = {
      enable = true;
      nssmdns4 = true;
      openFirewall = true;
    };
}
