{
  pkgs,
  ...
}:
{
  programs.nixvim = {
    # Add lsp-config as an options through extraPlugins
    # Unsure if I need to enable
    extraPlugins = [ pkgs.vimPlugins.nvim-lspconfig ];

    plugins = {
      lsp = {
        enable = true;

        # Setup default servers
        # later come back to have dependent
        # shells with specific servers
        servers = {
          nixd.enable = true;
        };
      };

    };
  };
}
