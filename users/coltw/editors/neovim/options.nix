{
  programs.nixvim = {
    # Neovim options
    opts = {
      # Line Numbers
      relativenumber = true; # Relative line number
      number = true; # Display absolute number of current line

      # Tab Options 
      tabstop = 4; # Number of spaces a <Tab> in the text stands for (local to buffer)
      shiftwidth = 4; # Number of spaces used for each step of (auto)indent (local to buffer)
      expandtab = true; # Expand <Tab> to spaces in Insert mode (local to buffer)
      autoindent = true; # Do clever autoindenting
      }; 
  };
}
