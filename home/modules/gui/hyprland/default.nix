{
  pkgs,
  ...
}:
{
  imports = [
    ./waybar.nix
  ];

  home.packages = with pkgs; [
    swaynotificationcenter # Notification Server
    swww # Wallpaper Deamon
    waybar # homebar
    rofi-wayland # App launcher
  ];
}
