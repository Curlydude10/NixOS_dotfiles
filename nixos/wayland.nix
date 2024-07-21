{
  programs.hyprland = {
    enable = true;
    nvidiaPatches = true;
  };

  environment.sessionVariables = {
    # If cursor becomes invisible
    # WLR_NO_HARDWARE_CURSORS = "1";

    # Hit electron apps to use wayland
    NIXOS_OZONE_WL = "1";
  };
}
