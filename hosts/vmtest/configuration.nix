{ ... }:

{
  config = {
    systemSettings = {
      # users
      users = [ "serpent" ];
      adminUsers = [ "serpent" ];

      # hardware
      cachy.enable = true;
      bluetooth.enable = true;
      powerprofiles.enable = true;
      tlp.enable = false;
      printing.enable = true;

      # software
      flatpak.enable = false;
      gaming.enable = false;
      virtualization = {
        docker.enable = false;
        virtualMachines.enable = false;
      };
      brave.enable = true;

      # wm
      hyprland.enable = true;

      # dotfiles
      dotfilesDir = "/etc/nixos";

      # security
      security = {
        automount.enable = true;
        blocklist.enable = true;
        doas.enable = true;
        firejail.enable = false; # TODO setup firejail profiles
        firewall.enable = true;
        gpg.enable = true;
  #      openvpn.enable = true;
  #      sshd.enable = false;
      };

      # style
      stylix = {
        enable = true;
        theme = "orichalcum";
      };
    };

    users.users.serpent.description = "Serpent";
    home-manager.users.serpent.userSettings = {
      name = "Serpent";
      email = "serpent@is-cool.com";
    };

    ## EXTRA CONFIG GOES HERE

  };

}
