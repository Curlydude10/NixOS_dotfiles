{
  pkgs,
  ...
}:
{
  stylix = {
    enable = true;
    image = /home/coltw/Pictures/Wallpaper.jpg;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/everforest.yaml";
  };
}
