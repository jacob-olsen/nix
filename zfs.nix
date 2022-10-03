{ config, pkgs, ... }:
{
  boot.supportedFilesystems = [ "zfs" ];
  boot.zfs.enableUnstable = true;
  boot.zfs.forceImportAll = false;
  networking.hostId = "f0704401";
  
}
