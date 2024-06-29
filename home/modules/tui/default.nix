{
  pkgs,
  ...
}:
{
  imports = [
    ./shells # Bash Settings
    ./neovim # Neovim config
    ./git.nix # Git config
    ./gpg.nix # Gpg key config
  ];

  # Add nessecary packages for tui
  home.packages = with pkgs; [
    # Coding Packages
    gh # git hub cli

    # Git Encryption Packages
    git-crypt # Encrypt repos
    gnupg # Generate keys
    pinentry-curses # input pass
  ];
}
