{ config, pkgs, ...}:
let
 # Set Bash Aliases
 myAliases = {
   vim = "nvim";
   ls = "ls -l --color";
 };
in
{
  programs.bash = {
    enable = true;
    shellAliases = myAliases;
  };
}
