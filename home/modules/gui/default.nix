{
  pkgs,
  ...
}:
{
  imports = [
    #./stylix

    ./hyprland
  ];
  
  # Add gui packages
  home.packages = with pkgs; [
    #Music
    spotify

    # Notes
    obsidian
  ];
}
