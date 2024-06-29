{
  pkgs,
  ...
}:
{
  #imports = [
  #  ./stylix
  #];
  
  # Add gui packages
  home.packages = with pkgs; [
    #Music
    spotify
  ];
}
