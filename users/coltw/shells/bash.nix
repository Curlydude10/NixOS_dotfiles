{ config, pkgs, ...}:
let
 # Set Bash Aliases
 myAliases = {
   vim = "nvim";
   ls = "ls -l";
 };
in
{
  programs.bash = {
    enable = true;
    shellAliases = myAliases;
  };
}
