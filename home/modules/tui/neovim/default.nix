{inputs, ...}: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./options.nix
    ./plugins
    ./keybinds.nix
 ];

  programs.nixvim = {
    # Enable and set to default editor
    enable = true;
    defaultEditor = true;

    # Remap vi and vim
    viAlias = true;
    vimAlias = true;

    # Enable lua loader
    luaLoader.enable = true;
  };
}
