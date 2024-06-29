{
  pkgs,
  ...
}:
{
  imports = [
    ./shells # Bash Settings
    ./neovim # Neovim config
  ];

  home.packages = with pkgs; [
    # Coding Packages
    gh

    # Git Encryption Packages
    git-crypt
    gnupg
    pinentry-curses
  ];
}
