{
  # Enable and install 1password
  programs._1password.enable = true;

  # Enable the desktop app
  programs._1password-gui = {
    enable = true;

    #Needed for system auth
    polkitPolicyOwners = [ "coltw" ];
  };
}
