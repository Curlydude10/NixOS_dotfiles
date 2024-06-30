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

    # Highlighting definitions
    treesitter-refactor = {
      enable = true;
      highlightDefinitions = {
        enable = true;
        # Set to false if you have an `updatetime` of ~100.
        clearOnCursorMove = false;
      };
    }; 

    # Proper highlighting for home manager
    hmts.enable = true;
  };
}
