{ config, pkgs, ... }:
{
  programs.home-manager = {
    enable = true;
  };

  home = {
    username = "brendon";
    homeDirectory = "/Users/brendon";
  };

  imports = [
    ./home/shell.nix
  ];

}
