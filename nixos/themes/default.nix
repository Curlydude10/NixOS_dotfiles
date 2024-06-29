{
  pkgs,
  ...
}:
{
  stylix = {
    enable = true;
    image = /home/coltw/Pictures/Wallpaper.jpg;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-hard.yaml";

    # Test to see if we can get something to work with kitty
    opacity.terminal = 0.8;
  };
}
