{config, pkgs, ...}:

{
  programs.neovim = {
    enable = true;
    
    # set as default editor
    defaultEditor = true;

    configure = {
      customRC = ''
        set cc=80
      ''
    }
  }
}
