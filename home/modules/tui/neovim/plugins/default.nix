{
  imports = [
    ./lsp.nix # Configure lsp servers
    ./cmp.nix
  ];

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
