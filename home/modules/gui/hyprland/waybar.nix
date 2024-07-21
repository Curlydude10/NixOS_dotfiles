{
  pkgs,
  ...
}:
{
  # Enable waybar
  programs.waybar = {
    enable = true;
  }; 

  # REMOVED BECAUSE IT WAS BREAKING THINGS 
  #  programs.waybar.package = pkgs.waybar.overrideAttrs (oa: {
  #   mesonFlags = (oa.mesonFlags or []) ++ [ "-Dexperimental=true"];
  #});
}
