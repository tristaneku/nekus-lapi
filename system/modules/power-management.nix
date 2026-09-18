{
  services.auto-cpufreq = {
    enable = true;
    settings = {
      battery = {
        governor = "performance";
        turbo = "never";
      };
      charger = {
        governor = "performance";
        turbo = "auto";
      };
    };
  };
}
