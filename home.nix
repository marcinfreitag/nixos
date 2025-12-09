{ config, pkgs, ... }:

{
  home.username = "marcin";
  home.homeDirectory = "/home/marcin";
  home.stateVersion = "25.11";
  home.packages = with pkgs; [
    font-awesome
    nerd-fonts.fira-code
    noto-fonts
    noto-fonts-color-emoji
  ];
  programs.git.enable = true;
  programs.yazi.enable = true;
  programs.mpv.enable = true;
  programs.bash = {
    enable = true;
    shellAliases = {
      ff = "fastfetch";
      v = "nvim";
      vi = "nvim";
      vim = "nvim";
      rebswfl = "sudo nixos-rebuild switch --flake ";
    };
  };
}
