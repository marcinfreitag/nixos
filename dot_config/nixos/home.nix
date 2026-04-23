{ config, pkgs,  ...}:

{
  home = {
    username = "{{ .linuxUserName }}";
    homeDirectory = "/home/{{ .linuxUserName }}";
  }
}
# vim: set tabstop=2 shiftwidth=2 expandtab :
