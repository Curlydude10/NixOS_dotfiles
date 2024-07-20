let
 # Set Bash Aliases
 myAliases = {
   vim = "nvim";          # Use nvim instead of vim
   ls = "ls -l --color";  # Always use -l with ls
   ".." = "cd ..";        # replace cd with ..
   cat = "bat";           # Use bat instead of cat
 };
in
{
  programs.bash = {
    enable = true;
    shellAliases = myAliases;
  };
}
