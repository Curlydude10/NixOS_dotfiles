{
  programs.nixvim = {
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
