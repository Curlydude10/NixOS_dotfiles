{
  pkgs,
  ...
}:
{
  stylix = {
    enable = true;
    image = /home/coltw/.NixOSdotfiles/nixos/themes/treeWallpaper.jpg;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/everforest.yaml";
  };
}
