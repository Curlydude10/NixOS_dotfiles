{
  programs.nixvim.plugins.lualine = {
    enable = true;

    # still not sure what this one does
    globalstatus = true;
    
    # Change the way the line looks
    sectionSeparators = {
      left = "";
      right = "";
    };

    # Set the component seperators to null
    componentSeparators = {
      left = "";
      right = "";
    };
    
    # +-------------------------------------------------+
    # | A | B | C                             X | Y | Z |
    # +-------------------------------------------------+
    sections = {
      lualine_a = ["mode"];
      lualine_b = ["branch"];
      lualine_c = [ 
        
        # Display the filetype smybol 
        {
          name = "filetype";
          extraConfig = {
            icon_only = true;
            separator = "";
            padding = {
              left = 1;
              right = 0;
            };
          };
        }

        "filename"
        
        # Still cannot get diagnostics to display, cant figure out why
        {
          name = "diagnostics";
          extraConfig = {
            sources = ["nvim_lsp"];
            symbols = {
              error = " ";
              warn = " ";
              info = " ";
              hint = "󰝶 ";
            };
          };
        }

        "diff"
      ];

      lualine_x = [
        # Show the problems

        # Show active language server
        {
          name.__raw = ''
            function()
                local msg = ""
                local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
                local clients = vim.lsp.get_active_clients()
                if next(clients) == nil then
                    return msg
                end
                for _, client in ipairs(clients) do
                    local filetypes = client.config.filetypes
                    if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                        return client.name
                    end
                end
                return msg
            end
          '';
          icon = "";
          color.fg = "#ffffff";
        }
        "encoding"
      ];
    };
  };
}

