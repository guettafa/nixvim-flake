{
  # Import all your configuration modules here
  imports = [ ./bufferline.nix ./behavior.nix ];

  # Configurations
  colorschemes.gruvbox.enable = true;

  # Plugins
  plugins = {
    telescope.enable = true;
    lualine.enable = true;
  };

  # LSP - Language Server
  plugins.lsp = {
    enable = true;
    servers = { 
      # Typescript
      ts_ls.enable = true;
      
      # C/C++
      clangd.enable = true;
    };
  };

  # nvim-cmp - Completion
  plugins.cmp.settings.sources = {
    enable = true;
    autoEnableSources = true;
    sources = [
      {name = "nvim_lsp";}
      {name = "path";}
      {name = "buffer";}
    ];
  };
}
