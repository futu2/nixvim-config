{ pkgs }:
{
  luaLoader.enable = true;
  globals.mapleader = " ";
  clipboard.providers.wl-copy.enable = true;
  colorschemes.tokyonight.enable = true;
  viAlias = true;
  vimAlias = true;
  opts = {
    number = true;
    relativenumber = true;
    smartindent = true;
    tabstop = 2;
    shiftwidth = 2;
    expandtab = true;
  };
  diagnostic.settings = {
    virtual_lines = {
      current_line = true;
    };
    virtual_text = false;
  };
  # filetype.extension.typ = "typst";
  plugins = import ./plugin.nix;
  extraPlugins = [
    pkgs.vimPlugins.idris2-nvim 
    pkgs.vimPlugins.nui-nvim 
  ];

  extraConfigLua = ''
  '';
}
