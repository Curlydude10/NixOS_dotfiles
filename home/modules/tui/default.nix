{
  pkgs,
  ...
}:
{
  imports = [
    ./terminal # Terminal Emulator and Bash Settings
    ./neovim # Neovim config
    ./git.nix # Git config
    ./gpg.nix # Gpg key config
  ];

  # Add nessecary packages for tui
  home.packages = with pkgs; [
    # Coding Packages
    gh # git hub cli

    # Terminal Emulators
    kitty # Modern customizable terminal editor

    # Git Encryption Packages
    git-crypt # Encrypt repos
    gnupg # Generate keys
    pinentry-curses # input pass

    # Make my terminal look pretty
    neofetch
    btop
    bat

    # Include ripgrep for fuzzyfinding
    fzf
    ripgrep
  ];
}
