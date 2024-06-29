{
  pkgs,
  ...
}:
{
#  imports = [];
  
  # Add gui packages
  home.packages = with pkgs; [
    #Music
    spotify
  ];
}
