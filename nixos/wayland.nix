{
  pkgs,
  ...
}:
{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  environment.sessionVariables = {
    # If cursor becomes invisible
    # WLR_NO_HARDWARE_CURSORS = "1";

    # Hit electron apps to use wayland
    NIXOS_OZONE_WL = "1";
  };
  
  # Needed for desktop interactions
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    xdgOpenUsePortal = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-hyprland
      pkgs.xdg-desktop-portal-gtk
    ];
  };
}
