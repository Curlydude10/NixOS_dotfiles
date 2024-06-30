{
  programs.nixvim.plugins = {
    # Better highlighting
    treesitter = {
      enable = true;

      # Nixvim specific injections
      nixvimInjections = true;

      # Highlighting for folds and indents
      folding = true;
      indent = true;
    };
    
    # Proper highlighting for home manager
    hmts.enable = true;
  };
}
