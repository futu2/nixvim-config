{ pkgs }:
{
  luaLoader.enable = true;
  globals.mapleader = " ";
  clipboard.providers.wl-copy.enable = true;
  colorschemes.tokyonight.enable = true;
  opts = {
    number = true;
    relativenumber = true;
    smartindent = true;
    tabstop = 2;
    shiftwidth = 2;
    expandtab = true;
  };
  # filetype.extension.typ = "typst";
  plugins = import ./plugin.nix;
  # extraPlugins = [ pkgs.vimPlugins.idris2-nvim ];
}
