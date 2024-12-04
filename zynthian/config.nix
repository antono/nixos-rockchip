{ config, pkgs, lib, ... }: {
  system.stateVersion = "24.05";

  networking.hostName = "zynthian";
  zramSwap.enable = true;

  networking.wireless = {
    enable = true;
    userControlled.enable = true;
    networks = {
      paradise = {
        psk = "p1234567890";
      };
    };
  };

  services.openssh.enable = true;
  networking.firewall.allowedTCPPorts = [ 22 ];

  users.users.zynthian = {
    isNormalUser = true;
    home = "/home/zynthian";
    description = "Zynthian User";
    extraGroups = [ "wheel" ];
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINtwczAgtyDz//njbA5G2UWNHk56yu78CgBtIKISz0ez antono.vasiljev@gmail.com"
    ];
  };

  security.sudo = {
    enable = true;
    wheelNeedsPassword = false;
  };

  # Automatically log in at the virtual consoles.
  services.getty.autologinUser = "zynthian";

  nixpkgs.config.allowUnfree = true;
}

