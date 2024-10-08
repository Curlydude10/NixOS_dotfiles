# Hevily inspired by https://github.com/GaetanLepage/nix-config

{
  programs.nixvim = {
    plugins = {
      # Set a snippet plugin for cmp to use
      # I arbitrarily chose lunasnip
      luasnip.enable = true;

      # A small plugin that adds symbols to
      # the autocomplete
      lspkind = {
        enable = true;

        cmp = {
          enable = true;
          menu = {
            nvim_lsp = "[LSP]";
            nvim_lua = "[api]";
            path = "[path]";
            luasnip = "[snip]";
            buffer = "[buffer]";
            neorg = "[neorg]";
            cmp_tabby = "[Tabby]";
          };
        };
      }; 

      cmp = {
        enable = true;

        settings = {
          # Set luasnip as desire snippet plugin
          snippet.expand = 
            "function(args) require('luasnip').lsp_expand(args.body) end";

          # Setup maping for using autocomplete
          mapping = {
            "<C-e>" = "cmp.mapping.close()"; #Close list

            # Move up and down on the list with tab and shift tab
            "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
            "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";

            # Select with enter
            "<CR>" = "cmp.mapping.confirm({ select = true })";
          };

          # Set where it looks to recommmend autocompletes
          sources = [
            {name = "path";}
            {name = "nvim_lsp";}
            {name = "cmp_tabby";}
            {name = "luasnip";}
            {
              name = "buffer";
              # Words from other open buffers can also be suggested.
              option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
            }
            {name = "neorg";}
          ];
        };
      };
    };
  };
}
