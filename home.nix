{ config, pkgs, ... }:

{
  home.username = "marcin";
  home.homeDirectory = "/home/marcin";
  home.stateVersion = "25.11";
  programs.git.enable = true;
  programs.bash = {
    enable = true;
    shellAliases = {
      ff = "fastfetch";
      vi = "nvim";
    };
  };
}
