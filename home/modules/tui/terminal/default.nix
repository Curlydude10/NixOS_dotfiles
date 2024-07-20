{
  pkgs,
  ...
}:
{
  imports = [
    ./bash.nix # bash config
    ./kitty.nix # terminal emulator config
  ];

  # Terminal packages
  home.packages = with pkgs; [
    neofetch # display sys info
    btop # monitor system status
    bat # better version of cat
    fzf # search files quickly
    ripgrep # better version of grep
  ];

  # Configure bat
  programs.bat = {
    enable = true;

    config = {
 #     theme = "Everforest";
    };
  };
}
