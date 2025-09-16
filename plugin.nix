{
  web-devicons.enable =true;
  # beauty
  lualine = {
    enable = true;
    settings.options.globalstatus = true;
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
  # notify.enable = true;
  colorizer.enable = true;
  # specs =
  #   {
  #     enable = true;
  #     color = "yellow";
  #     width = 15;
  #   };


  # basic function
  comment.enable = true;
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
  vim-surround.enable = true;
  todo-comments.enable = true;
  toggleterm = {
    enable = true;
    # openMapping = "<C-t>";
  };
  trouble.enable = true;
  which-key.enable = true;
  # wilder.enable = true;
  fzf-lua = {
    enable = true;
    keymaps = {
      "<leader>ff" = "files";
      "<leader>fg" = "live_grep";
    };
  };

  # git related
  fugitive.enable = true;
  diffview.enable = true;

  # training
  hardtime.enable = true;

  # markdown related
  markdown-preview.enable = true;
  # mkdnflow.enable = true;

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
      pylsp = {
        enable = true;
        settings = {
          plugins = {
            rope.enabled = true;
            # pylsp_mypy.enabled = true;
            yapf.enabled = true;
            black.enabled = true;
            flake8.enabled = true;
            isort.enabled = true;
            jedi.enabled = true;
            mccabe.enabled = true;
            pycodestyle.enabled = true;
            pydocstyle.enabled = true;
            pyflakes.enabled = true;
            pylint.enabled = true;
          };
        };
      };
      hls = {
        enable = true;
        installGhc=false;
        package = null;
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
      tinymist.enable = true;
      idris2_lsp.enable = true;
      nickel_ls.enable = true;
      zls.enable = true;
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

  # cmp.enable = true;
  lsp-lines = {
    enable = true;
  };
  lsp-format = {
    enable = true;
  };
  # lspkind.enable = true;
  # lspkind.cmp.enable = true;
  lspsaga.enable = true;
  lspsaga.settings.lightbulb.enable = false;

  fidget.enable = true;
  godot.enable = true;
  glance.enable = true;
  typescript-tools.enable = true;
  zig.enable = true;
}
