{
  #inputs = [
  #];

  # Plugin Configuration
  programs.nixvim = {
    # Color Scheme
    colorschemes.gruvbox.enable = true;

    # Plugins with simple configs
    plugins = {
      # Autopair () {} and []
      nvim-autopairs.enable = true;
    };
  };
}
