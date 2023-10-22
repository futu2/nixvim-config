{
  # beauty
  lualine = {
    enable = true;
    globalstatus = true;
  };
  alpha = {
    enable = true;
    layout = import ./alpha.nix;
  };
  # bufferline.enable = true;
  # barbecue.enable = true;
  chadtree.enable = true;
  indent-blankline.enable = true;
  cursorline.enable = true;
  noice.enable = true;
  notify.enable = true;
  nvim-colorizer.enable = true;
  specs =
    {
      enable = true;
      color = "yellow";
      width = 15;
    };


  # basic function
  comment-nvim.enable = true;
  flash.enable = true;
  multicursors.enable = true;
  spider = {
    enable = true;
    keymaps.motions = {
      b = "b";
      e = "e";
      g = "ge";
      w = "w";
    };
  };
  surround.enable = true;
  todo-comments.enable = true;
  toggleterm = {
    enable = true;
    openMapping = "<C-t>";
  };
  trouble.enable = true;
  # which-key.enable = true;
  # wilder.enable = true;
  telescope = {
    enable = true;
    keymaps = {
      # "<C-p>" = {
      #   action = "git_files";
      #   desc = "Telescope Git Files";
      # };
      "<leader>/" = "live_grep";
      "<leader>f" = "find_files";
      "<leader>m" = "man_pages";
      "gr" = "lsp_references";
    };
  };

  # git related
  fugitive.enable = true;
  diffview.enable = true;

  # training
  hardtime.enable = true;

  # markdown related
  markdown-preview.enable = true;
  mkdnflow.enable = true;

  # nix.enable = true;

  treesitter = {
    enable = true;
  };
  treesitter-context.enable = true;
  rainbow-delimiters.enable = true;

  lsp = {
    enable = true;
    servers = {
      # cmake.enable = true;
      # clangd.enable = true;
      # gopls.enable = true;
      # bashls.enable = true;
      # pyright.enable = true;
      # tsserver.enable = true;
      # terraformls.enable = true;
      # rust-analyzer.enable = true;
      # rnix-lsp.enable = true;
      # lua-ls.enable = true;
      # html.enable = true;
      hls = {
        enable = true;
        installLanguageServer = false;
        cmd = [
          "haskell-language-server"
          "--lsp"
        ];
        extraOptions = {
          settings = {
            haskell = {
              hlintOn = true;
              formattingProvider = "fourmolu";
            };
          };
        };
      };
      nixd.enable = true;
    };
    keymaps.lspBuf = {
      "gd" = "definition";
      "gD" = "references";
      "gt" = "type_definition";
      "gi" = "implementation";
      "K" = {
        action = "hover";
        desc = "Hover";
      };
    };
  };

  nvim-cmp.enable = true;
  lsp-lines = {
    enable = true;
  };
  lsp-format = {
    enable = true;
  };
  lspkind.enable = true;
  lspkind.cmp.enable = true;
  lspsaga.enable = true;
  lspsaga.lightbulb.enable = false;
  fidget.enable = true;
}
