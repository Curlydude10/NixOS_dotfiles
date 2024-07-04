{
  imports = [
    ./lsp.nix # Configure lsp servers
    ./cmp.nix # Autocompletion 
    ./treesitter.nix # Better text highlighting
    ./lualine.nix # Status bar 
    ./telescope.nix # Fuzzy searching files
  ];

  # Plugin Configuration
  programs.nixvim = {
    # Plugins with simple configs
    plugins = {
      # Autopair () {} and []
      nvim-autopairs.enable = true;
    };
  };
}

