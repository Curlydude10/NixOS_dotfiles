{
  programs.nixvim = {
    # Neovim options
    opts = {
      # Faster completion
      updatetime = 100;

      # Line Numbers
      relativenumber = true; # Relative line number
      number = true; # Display absolute number of current line

      # Tab Options 
      tabstop = 4; # Number of spaces a <Tab> stands for (local to buffer)
      shiftwidth = 4; # Number of spaces used for (auto)indent 
      expandtab = true; # Expand <Tab> to spaces in Insert mode 
      autoindent = true; # Do clever autoindenting

      # Folding 
      foldlevel = 99; # Folds higher than this will be closed

      # Character limit
      cc = "80";

      # Saves
      swapfile = false; # Disable swapfile
      undofile = true; # Automatically save and restore undo history
      }; 
  };
}
