{ config, lib, pkgs, modulesPath, system, partitions, ... }:

{
    imports = [
        (modulesPath + "/installer/scan/not-detected.nix")
    ];

    boot = {
        kernelPackages = pkgs.linuxPackages_zen;
        kernelModules = [ "kvm-amd" ];
        extraModulePackages = [ ];

        loader = {
            systemd-boot.enable = true;
            timeout = 0;
            efi.canTouchEfiVariables = true;
        };

        initrd = {
            availableKernelModules = [ "nvme" "xhci_pci" "usb_storage" "usbhid" "sd_mod" "rtsx_pci_sdmmc" ];
            kernelModules = [ ];
        };
    };

    fileSystems = {
        "/boot" = {
            device = "/dev/disk/by-uuid/${partitions.boot}";
            fsType = "vfat";
            options = [ "fmask=0077" "dmask=0077" ];
        };

        "/" = {
            device = "/dev/mapper/luks-${partitions.root}";
            fsType = "ext4";
        };
    };

    swapDevices = [
        {
            device = "/dev/mapper/luks-${partitions.swap}";
        }
    ];

    boot.initrd.luks.devices = {
        "luks-${partitions.root}".device = "/dev/disk/by-uuid/${partitions.root}";
        "luks-${partitions.swap}".device = "/dev/disk/by-uuid/${partitions.swap}";
    };

    nixpkgs.hostPlatform = lib.mkDefault "${system}";
    hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
