{
  programs.nixvim = {
    # Plugin Settings
    plugins = {
      nvim-tree = {
        enable = true;
        openOnSetupFile = true;
        autoReloadOnWrite = true;
      };
    };

    # Plugin Keybings
    keymaps = [
      # Toggle nvim 
      {
        key = "<C-n>";
        action = "<CMD>NvimTreeToggle<CR>";
        options.desc = "Toggle NvimTree";
      }
    ];
  };
}
