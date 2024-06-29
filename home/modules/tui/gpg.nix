{
  pkgs,
  ...
}:
{
  # Enable gpg key gen
  programs.gpg = {
    enable = true;
  };

  # Set pinentry and enable gpg agent
  services.gpg-agent = {
   enable = true;
   pinentryPackage = pkgs.pinentry-curses;
  };
}
