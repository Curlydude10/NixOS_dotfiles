{
  imports = [
    ./lsp.nix # Configure lsp servers
    ./cmp.nix # Autocompletion 
    ./treesitter.nix # Better text highlighting
    ./lualine.nix # Status bar 
    ./telescope.nix # Fuzzy searching files
    ./nvim_tree.nix # File Search
  ];

  # Plugin Configuration
  programs.nixvim = {
    # Plugins with simple configs
    plugins = {
      # Autopair () {} and []
      nvim-autopairs.enable = true;

      # Enable git diff signs on code
      gitsigns = {
        enable = true;
        settings.signs = {
          add.text = "+";
          change.text = "~";
        };
      };
    };
  };
}

