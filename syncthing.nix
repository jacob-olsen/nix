{ config, pkgs, ... }:
{ 
 services = {
    syncthing = {
      enable = true;
      relay.enable = false;
      openDefaultPorts = true;
      user = "jacob";
      dataDir = "/home/jacob/synching";

      extraOptions = {
        gui = {
          theme = "dark";
        };
        options = {
          globalAnnounceEnabled = false;
          localAnnounceEnabled = false;
          relaysEnabled = false;
        };
      };

      overrideDevices = true;
      overrideFolders = true;
      devices = {
        "server" = {
          id = "VJMJZAL-WJ7CIR7-4PWTF6S-GMME6PV-FD6EMZY-IDKIQ5L-REY2IMG-5IY4SQP";
          introducer = true;
          addresses = [
            "tcp://syncserver.lan:22000"
          ];
        };
      };
      folders = {
        "image" = {
          path = "/home/jacob/Pictures";
          id = "oneplus_a5010_rxg3-fotos";
          devices = [ "server" ];
        };
        "pass" = {
          path = "/home/jacob/.pass";
          id = "cgey3-gx49z";
          devices = [ "server" ];
        };
      };
    };
  };
}
